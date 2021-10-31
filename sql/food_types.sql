create table food_types(
  `short_name` varchar(200) primary key not null,
  `long_name` varchar(200),
  `url` varchar(200),
  `calories` float(13,2),
  /* fat-related columns */
  `total_fat_in_grams` float(13,2),
  `saturated_fat_in_grams` float(13,2),
  `trans_fat_in_grams` float(13,2),
  `monounsaturated_fat_in_grams` float(13,2),
  `polyunsaturated_fat_in_grams` float(13,2),
  /* cholesterol */
  `cholesterol_in_mg` float(13,2),
  /* sodium and potassium (mostly from salts) */
  `sodium_in_mg` float(13,2),
  `potassium_in_mg` float(13,2),
  /* carbohydrate-related columns */
  `total_carb_in_grams` float(13,2),
  `fiber_in_grams` float(13,2),
  `sugars_in_grams` float(13,2),
  /* protein-related columns */
  `protein_in_grams` float(13,2),
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */
  `vitamin_a_in_mcg` float(13,2),
  `vitamin_c_in_mg` float(13,2),
  `vitamin_d_in_mcg` float(13,2),
  `calcium_in_mg` float(13,2),
  `iron_in_mg` float(13,2),
  /* columns for other less commonly reported vitamins and minerals */
  `vitamin_b6_in_mg` float(13,2),
  `vitamin_b12_in_mcg` float(13,2),
  `vitamin_e_in_mg` float(13,2),
  `vitamin_k_in_mcg` float(13,2),
  `magnesium_in_mg` float(13,2),
  `phosphorus_in_mg` float(13,2),
  `zinc_in_mg` float(13,2),
  `copper_in_mg` float(13,2),
  /* notes column */
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into food_types(short_name, long_name, url, calories,
  /* fat-related columns */ total_fat_in_grams, saturated_fat_in_grams, trans_fat_in_grams, monounsaturated_fat_in_grams, polyunsaturated_fat_in_grams,
  /* cholesterol */ cholesterol_in_mg,
  /* sodium and potassium (mostly from salts) */ sodium_in_mg, potassium_in_mg,
  /* carbohydrate-related columns */ total_carb_in_grams, fiber_in_grams, sugars_in_grams,
  /* protein-related columns */ protein_in_grams,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ vitamin_a_in_mcg, vitamin_c_in_mg, vitamin_d_in_mcg, calcium_in_mg, iron_in_mg,
  /* columns for other less commonly reported vitamins and minerals */ vitamin_b6_in_mg, vitamin_b12_in_mcg, vitamin_e_in_mg, vitamin_k_in_mcg, magnesium_in_mg, zinc_in_mg, phosphorus_in_mg, copper_in_mg,
  /* notes column */notes) values

  ('TJ Sauerkraut','Raw & Fermented Trader Joe''s Sauerkraut with Pickled Persian Cucumbers','https://www.traderjoes.com/fearless-flyer/article/5455',85,
  /* fat-related columns */ 0,0,0,0,0,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 3400,0,
  /* carbohydrate-related columns */ 34,17,17,
  /* protein-related columns */ 0,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 0,225,0,0,0,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL, 
  /* notes */ 'The nutrition data is extrapolated from the data for the serving size (30g) by scaling up to the total mass (510g). I generally eat this mixed with almond milk across several meals. For Vitamin C, the amount was specified as 15% of daily value for 1 serving; I assumed a daily value of 90 mg for calculations.'),

  ('TJ Almond Milk','Trader Joe'' Almond Beverage Original Unsweetened','http://www.whatsgoodattraderjoes.com/2014/02/trader-joes-non-dairy-almond-beverage.html',236,
  /* fat-related columns */ 20,0,0,NULL,NULL,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 1260,275,
  /* carbohydrate-related columns */ 8,8,8,
  /* protein-related columns */ 8,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 708,0,39,3071,3,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'The nutrition data is extrapolated from tthe data for the serving size (240ml) by scaling up to the total volume (1.89L), leading to a scaling factor of 7.875. For Vitamin A and calcium, values per serving were specified as a percentage of daily value, rather than in absolute terms. I used the following daily values to get absolute numbers: 800 mcg for Vitamin A, and 1,000 mg for calcium. Note that the data shown in the link is a bit outdated; in particular, the calories are now lower (30 per serving instead of 40).'),

  ('TJ Whole Wheat Wraps','Trader Joe''s Organic Olive Oil Whole Wheat Wraps','https://www.fooducate.com/product/Trader-Joe-s-Whole-Wheat-Wraps-Olive-Oil/D7FB0082-5D10-11E0-A55F-1231380C180E',1020,
  /* fat-related columns */ 30,3,0,NULL,NULL,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 2760,300,
  /* carbohydrate-related columns */ 192,18,0,
  /* protein-related columns */ 36,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 0,0,0,660,8,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'The dietary information in the link seems a little outdated compared to what I see on the actual item. There are 6 wraps and the information in both places is per wrap, so I am multiplying by 6.'),

  ('TJ Whole Wheat Tortillas','Trader Joe''s Organic Extra Virgin Olive Oil Tortillas',NULL,1140,
  /* fat-related columns */ 18,0,0,NULL,NULL,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 2100,540,
  /* carbohydrate-related columns */ 192,12,0,
  /* protein-related columns */ 30,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 0,0,0,1020,2.4,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'There are 6 tortillas per container and the information is per tortilla, so I am multiplying by 6.'),

  ('TJ Misal Curry','Trader Joe''s Misal Curry with Brown Rice: Sprouted Beans in a Spicy Curry Sauce','http://www.whatsgoodattraderjoes.com/2021/01/trader-joes-misal-curry.html',420,
  /* fat-related columns */ 17,8,0,NULL,NULL,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 970,350,
  /* carbohydrate-related columns */ 44,15,0,
  /* protein-related columns */ 23,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 0,0,0,40,0,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */'The dietary information in the link matches what I see on the actual item, but the link cuts off the information on vitamin D, calcium, iron, and potassium. Since the serving size used is the entire package, we did not need to use a multiplier.'),

  ('TJ Veg Biryani','Trader Joe''s Vegetable Biryani with Vegetable Dumplings','http://www.whatsgoodattraderjoes.com/2014/07/trader-joes-vegetable-biryani.html',420,
  /* fat-related columns */ 12,2,0,NULL,NULL,
  /* cholesterol */ 5,
  /* sodium and potassium (mostly from salts) */ 1370,480,
  /* carbohydrate-related columns */ 72,12,5,
  /* protein-related columns */ 10,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 0,0,0,60,2,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'The dietary information in the link is somewhat outdated. I used the information from an actual item. The information there includes a column for total value per container; I used that instead of using the column for value per serving size and multiplying.'),

  ('TJ Baby Spinach','Trader Joe''s Les Salades du Midi Baby Spinach','https://www.fooducate.com/product/Trader-Joe-s-Baby-Spinach/35B7FA44-169F-11E0-BF92-FEFD45A4D471',80,
  /* fat-related columns */ 0,0,0,0,0,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 260,1896,
  /* carbohydrate-related columns */ 12,8,0,
  /* protein-related columns */ 8,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 1600,96,0,320,8,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'I used information printed on the back of an actual item. The information was specified in per-serving terms, with 4 srevings per container, so I multiplied the values by 4 for reporting.'),

  ('Trader Giotto''s Olive Oil','Trader Giotto''s Extra Virgin Olive Oil',NULL,8000,
  /* fat-related columns */ 933,133,0,667,100,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 0,0,
  /* carbohydrate-related columns */ 0,0,0,
  /* protein-related columns */ 0,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 0,0,0,0,0,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'Nutritional information was provided per serving, with a serving size of 15 mL compared to container size of 1000 mL. All amounts provided were scaled appropriatey to container size.'),

  ('TJ Sea Salt','Trader Joe''s Sea Salt: Fine Crystals','https://www.amazon.com/Trader-Joes-Salt-Fine-Crystals/dp/B00IGY6P6K',0,
  /* fat-related columns */ 0,0,0,0,0,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 275000,0,
  /* carbohydrate-related columns */ 0,0,0,
  /* protein-related columns */ 0,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 0,0,0,0,0,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'The nutrition information provided says that one serving of 1.2 g contains 440 mg of sodium; there are 625 servings in a 750 g container so multiplying by 625 gives 275000 mg = 275 g. This is in the ballpark of what you would expect based on the proportion by mass of sodium in the NaCl molecule (11/28, which would give 295 g if the entire sea salt container were just NaCl).'),

  ('TJ Carrots','Trader Joe''s Cut and Peeled Carrots','https://www.fooducate.com/product/Trader-Joe-s-Cut-and-Peeled-Carrots/2FC11530-43D1-11E0-A55F-1231380C180E',35,
  /* fat-related columns */ 0,0,0,0,0,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 65,270,
  /* carbohydrate-related columns */ 8,3,5,
  /* protein-related columns */ 1,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 1800,6,0,20,0.36,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'The website did not specify number of servings per container, so I assumed it is 1 (that is consistent with the size as I remember it).'),

  ('Beefsteak tomato','Trader Joe''s beefsteak tomato','https://www.nutritionix.com/food/beefsteak-tomato',25,
  /* fat-related columns */ 0.4,0.1,0,0.1,0.1,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 9.1,431,
  /* carbohydrate-related columns */ 7.1,2.2,4.8,
  /* protein-related columns */ 1.6,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 270,38,0,14,0.216,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'The actual size of beefsteak tomatoes I consume varies and may not match the specification on Nutritionix.'),

  ('Eggplant','Trader Joe''s eggplant','https://www.eatthismuch.com/food/nutrition/eggplant,1975/',137,
  /* fat-related columns */ 1,0.2,0,0.1,0.4,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 11,1254.9,
  /* carbohydrate-related columns */ 32.2,16.4,19.3,
  /* protein-related columns */ 5.4,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 5.5,12.1,0,49.3,1.3,
  /* columns for other less commonly reported vitamins and minerals */ 0.5,0,1.6,19.2,76.7,131.5,0.9,0.4,
  /* notes */ 'The data as shown on this website may differ from actual data for the bell peppers. Other information is on the site.'),

  ('Red bell pepper','Trader Joe''s red bell pepper','https://www.eatthismuch.com/food/nutrition/red-bell-pepper,2440/',36.9,
  /* fat-related columns */ 0.4,0,0,0,0.1,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 4.8,251.1,
  /* carbohydrate-related columns */ 7.2,2.5,5,
  /* protein-related columns */ 1.2,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 186.8,152,0,8.3,0.5,
  /* columns for other less commonly reported vitamins and minerals */ 0.3,0,1.9,5.8,14.3,30.9,0.3,0,
  /* notes */ 'The data as shown on this website may differ from actual data for the bell peppers. Other information: Manganese: 0.1 mg, Selenium: 0.1 mcg, Thiamine: 0.1 mg, Riboflavin: 0.1 mg, Niacin: 1.2 mg, Folate: 54.7 mcg, Choline: 6.7 mg.'),

  ('Green bell pepper','Trader Joe''s green bell pepper','https://www.eatthismuch.com/food/nutrition/green-bell-pepper,2080/',23.8,
  /* fat-related columns */ 0.2,0.1,0,0,0.1,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 3.6,208.3,
  /* carbohydrate-related columns */ 5.5,2,2.9,
  /* protein-related columns */ 1,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ 21.4,95.7,0,11.9,0.4,
  /* columns for other less commonly reported vitamins and minerals */ 0.3,0,0.4,8.8,11.9,23.8,0.2,0.1,
  /* notes */ 'The data as shown on this website may differ from actual data for the bell peppers. Other information is on the site.'),

  ('TJ Walnuts','Trader Joe''s Organic Raw Walnuts: Halves & Pieces',NULL,2186,
  /* fat-related columns */ 218.6,18.2,0,157.9,30.4,
  /* cholesterol */ 0,
  /* sodium and potassium (mostly from salts) */ 0,1457,
  /* protein-related columns */ 48.6,
  /* carbohydrate-related columns */ 48.6,24.3,0,
  /* columns for commonly reported vitamins and minerals (other than sodium and potassium) */ NULL,NULL,0,36.4,9.7,
  /* columns for other less commonly reported vitamins and minerals */ NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
  /* notes */ 'Data was provided for a serving size of 28g, and the conotainer size was 340g. All amounts have been scaled appropriately.');

/* Mehak Indian Cuisine standard set:
  - two colored rices (complementary)
  - aloo gobi
  - aloo saag
  - vegetable masala
  - two dal soups
 */
