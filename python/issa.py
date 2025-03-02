#!/usr/bin/env python3

import datetime
import shared, connection

DEFAULT_CONSUMPTION_LENGTH_IN_DAYS = {
    "Dil Se Indian Cuisine half chana masala and half aloo gobi": 1,
    "India House Oregon aloo sag": 1,
    "Kitava Power Bowl": 1,
    "Lemon": 7,
    "Morton Iodized Salt": 30*8,
    "Orange bell pepper": 4,
    "TJ Almonds": 30*2,
    "TJ Brazil Nuts": 30*2,
    "TJ Organic Couscous": 14,
    "Whole Foods Mexican Whole Wheat Tortillas": 14,
}

def logging(*args):
    debug = False
    if debug:
        print(*args)

def main() -> None:
    # amount_consumed = get_food_amount_for_range("Beefsteak tomato", datetime.date(2024, 8, 20), datetime.date(2024, 9, 13))
    # amount_consumed = get_food_amount_for_range("Trader Giotto's Olive Oil", datetime.date(2024, 6, 18), datetime.date(2024, 6, 20))
    # amount_consumed = get_food_amount_for_range("Trader Giotto's Olive Oil", datetime.date(2023, 5, 6), datetime.date(2025, 5, 10))
    start_date = datetime.date(2024, 5, 4)
    for w in range(52):
        week_start = start_date + datetime.timedelta(weeks=w)
        week_end = start_date + datetime.timedelta(weeks=w+1)
        print(f"For week starting {week_start.strftime('%Y-%m-%d')}: ", end="")
        get_nutrients_for_range(week_start, week_end)

def get_nutrients_for_range(start_date: datetime.date, end_date: datetime.date):
    _connection = connection.connect()
    query = """
        select short_name from food_types
    """
    with _connection.cursor() as cursor:
        cursor.execute(query)
        result = cursor.fetchall()
        food_types = [row["short_name"] for row in result]
        all_nutrients_consumed = {}
        for food_type in food_types:
            amount_consumed = get_food_amount_for_range(food_type, start_date, end_date)
            nutrients_unit = get_nutrient_for_food(food_type)
            nutrients_consumed = {k: (v*amount_consumed if v is not None else None)
                                  for k, v in nutrients_unit.items()}
            all_nutrients_consumed = add_nutrient_dicts(all_nutrients_consumed, nutrients_consumed)
        for k, v in all_nutrients_consumed.items():
            if k == "calories":
                if v is None:
                    val_str = "unknown"
                else:
                    num_days = (end_date - start_date).days
                    assert num_days > 0
                    val_str = f"{v} (daily avg: {v / num_days})"
                print(f"{k}: {val_str}")

def add_nutrient_dicts(d1, d2):
    result = {}
    all_keys = set(d1.keys()).union(d2.keys())
    for key in all_keys:
        v1 = d1.get(key)
        v2 = d2.get(key)
        if v1 is None:
            val = v2
        elif v2 is None:
            val = v1
        else:
            val = v1 + v2
        result[key] = val
    return result

def get_nutrient_for_food(food_type: str) -> dict[str, float | None]:
    _connection = connection.connect()
    query = """
        select * from food_types where short_name = %s
    """
    d: dict[str, float | None] = {}
    with _connection.cursor() as cursor:
        cursor.execute(query, (food_type,))
        result = cursor.fetchall()
        assert len(result) == 1
        the_food = result[0]
        for key in the_food:
            if key.endswith("_in_mg") or key.endswith("_in_mcg") or key.endswith("_in_grams") or key == "calories":
                val = the_food[key]
                if val is None:
                    d[key] = None
                else:
                    d[key] = float(val)
        return d

def get_food_amount_for_range(food_type: str, start_date: datetime.date, end_date: datetime.date) -> float:
    """Return how much of `food_type` was consumed between start_date
    (inclusive) and end_date (exclusive). The number of instances is prorated
    and can be fractional."""
    _connection = connection.connect()
    query = """
        select * from food_preparations_and_openings where food_type = %s
        order by preparation_or_opening_date
    """
    assert start_date <= end_date
    logging(f"Checking how much {food_type} was consumed in the period [{start_date}--{end_date}):")
    with _connection.cursor() as cursor:
        cursor.execute(query, (food_type,))
        result = cursor.fetchall()
        total = 0.0
        if len(result) == 0:
            logging(f"total is {total}")
            return total
        elif len(result) == 1:
            # We augment the result with a date that we guess based on
            # DEFAULT_CONSUMPTION_LENGTH_IN_DAYS.
            guessed_next_date = result[0]["preparation_or_opening_date"] + datetime.timedelta(days=DEFAULT_CONSUMPTION_LENGTH_IN_DAYS[food_type])
            result.append({
                'preparation_or_opening_date': guessed_next_date,
                'food_type': food_type,
                'quantity': 0.0,
                'meal_index': None,
            })
        else:
            # We augment the result by guessing that the currently-bought
            # instance of the item will be consumed in the same length of time
            # as however long it took for the item to be consumed the previous
            # time.
            ultimate_date = result[-1]["preparation_or_opening_date"]
            penultimate_date = result[-2]["preparation_or_opening_date"]
            span = (ultimate_date - penultimate_date).days
            assert span > 0
            extrapolated_next_date = ultimate_date + datetime.timedelta(days=span)
            result.append({
                'preparation_or_opening_date': extrapolated_next_date,
                'food_type': food_type,
                'quantity': 0.0,
                'meal_index': None,
            })

        for i in range(len(result) - 1):
            curr_date = result[i]["preparation_or_opening_date"]
            next_date = result[i+1]["preparation_or_opening_date"]
            consumption_length = (next_date - curr_date).days
            portion_to_count = max(0, (min(next_date, end_date) - max(start_date, curr_date)).days)
            assert(consumption_length >= 0)
            assert(portion_to_count >= 0)
            if consumption_length == 0:
                fraction = 1.0 if start_date == curr_date else 0.0
            else:
                fraction = portion_to_count / consumption_length
            quantity = float(result[i]["quantity"])
            total += fraction * quantity
            logging(f"period [{curr_date}--{next_date}): +{fraction}*{quantity} ({portion_to_count}/{consumption_length} days, {quantity} {food_type})")
        logging(f"total is {total}")
        return total

if __name__ == "__main__":
    main()
