create table supplements(
  `supplement_shorthand` varchar(255) not null,
  `supplement_url` varchar(2000),
  `num_pieces` int(11),
  `start_date` date,
  `end_date` date,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into supplements(supplement_shorthand, supplement_url, num_pieces, start_date, end_date, notes) values
  /* Omega-3: Freshfield Vegan Omega-3 */
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-01-10','2020-03-13','This is the first time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day, excluding days of travel; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-03-14','2020-05-08','This is the second time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-05-09','2020-06-27','This is the third time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-06-28','2020-08-09','This is the fourth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-08-10','2020-10-07','This is the fifth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-10-08','2020-11-23','This is the sixth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. End date is approximate and may be off by a couple of days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-11-24','2021-01-13','This is the seventh time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. Start date is approximate and may be off by a couple of days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-01-14','2021-03-01','This is the eighth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-03-02','2021-04-18','This is the ninth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-04-19','2021-06-01','This is the tenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-06-02','2021-07-14','This is the eleventh time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-07-15','2021-09-14','This is the twelfth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. I averaged about one per day. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-09-15','2021-12-15','End date is highly approximate. This is the thirteeenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I accidentally started consuming another bottle in parallel so the consumption time for this seems longer than usual, but the actual consumption rate is pretty similar to usual. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-12-16','2022-01-04','Start date is highly approximate, end date may be off by a few days. This is the fourteeenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I had actually started consuming this bottle earlier, before finishing the previous one, but don''t have an exact start date. The consumption period therefore seems shorter than usual, but the actual consumption rate is pretty similar to usual. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2022-01-05','2022-03-22','Start date may be off by a few days, end date may be off by a day. This is the fifteenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; my average seems to have worked out to a little lower. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2022-03-23','2022-05-03','This is the fifteenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  /* On 2021-11-02 I discovered three bottles with an earlier expiration date of June 2022 
     (that I thought I had lost). I decided that once I finish my two already-open bottles
     I will switch to those three bottles before going to the one unopened newer bottle.
     This was based on calculations that suggested that even with such a plan I still expected
     to finish by the expiration time. */

  /* Vitamin D3: Finest Nutrition 2000 IU Vitamin D3 */
  ('Finest Nutrition 2000 IU Vitamin D3','https://www.walgreens.com/store/c/finest-nutrition-d3-vitamin-2000-iu-dietary-supplement-softgels/ID=prod6112628-product',220,'2020-03-01','2020-05-31','This was not the first time for me taking this supplement; it''s just the first actively recorded start date. I don''t remember the exact start date, so the entered date of 2020-03-01 is an approximate estimate. I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 92 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Finest Nutrition 2000 IU Vitamin D3','https://www.walgreens.com/store/c/finest-nutrition-d3-vitamin-2000-iu-dietary-supplement-softgels/ID=prod6112628-product',220,'2020-06-01','2020-08-24','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 85 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Finest Nutrition 2000 IU Vitamin D3','https://www.walgreens.com/store/c/finest-nutrition-d3-vitamin-2000-iu-dietary-supplement-softgels/ID=prod6112628-product',220,'2020-08-25','2020-12-04','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 109 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Nature Made Vitamin D3 2000 IU','https://www.walgreens.com/store/c/nature-made-vitamin-d3-2000-iu/ID=prod6148394-product',220,'2020-12-05','2021-03-28','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 114 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Nature Made Vitamin D3 2000 IU','https://www.walgreens.com/store/c/nature-made-vitamin-d3-2000-iu/ID=prod6148394-product',220,'2021-03-29','2021-07-08','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 114 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  /* Vitamin D3: Doctor's Best */
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-07-12','2021-08-07','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 27 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-08-08','2021-09-15','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 38 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-09-16','2021-11-04','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 49 days) it looks like the mean consumption was at the high end of my expected average consumption.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-11-05','2021-12-19','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 45 days) it looks like the mean consumption was a little above the high end of my expected average consumption.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-12-22','2022-02-12','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 53 days) it looks like the mean consumption was around the middle of my target.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2022-02-14','2022-04-07','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 53 days) it looks like the mean consumption was around the middle of my target.'),
  /* Next bottle started 2022-04-08 */
  /* Vitamin B12 */
  ('Finest Nutrition 500 mcg Vitamin B12','https://www.walgreens.com/store/c/finest-nutrition-b-12-vitamin-500-mcg-dietary-supplement-tablets/ID=prod6109062-product',300,'2020-06-26','2021-08-14','This was not the first time for me taking this supplement; it''s just the first actively recorded start date.'),
  /* new bottle started 2021-08-16 */
  /* Vitamin C */
  ('Nature Made Chewable C 500 mg','https://www.walgreens.com/store/c/nature-made-chewable-vitamin-c-500-mg-tablets-orange/ID=prod987243-product',60,'2020-04-18','2020-09-11','I bought Chewable Vitamin C from Walgreens. The goal was not to consume regularly, but rather to keep in order to be able to fight off colds and anything that may seem like the coronavirus. I consumed one chewable tablet roughly for every day I took a trip to an indoor crowded environment, such as a grocery store or convenience store. The bottle lasted me about five months, as expected given that my outside trips were once every 2.5 days or so on average.'),
  ('Nature Made C 500 mg','https://www.walgreens.com/store/c/nature-made-vitamin-c-500-mg-caplets/ID=prod3511-product',250,'2020-09-14',NULL,'I bought two bottles (buy one get one free) of 60 caplets each, for use after my bottle of chewable Vitamin C would finish. The goal was not to consume regularly, but rather to keep in order to be able to fight off colds and anything that may seem like the coronavirus. I consumed one tablet roughly for every day I took a trip to an indoor crowded environment, such as a grocery store or convenience store.'),
  /* Calcium/Magnesium/Zinc */
  ('Nature Made Calcium Magnesium Zinc','https://www.walgreens.com/store/c/nature-made-calcium,-magnesium-zinc-with-vitamin-d3/ID=prod3388-product',300,'2020-10-07','2021-08-18','I previously had calcium-only supplements, but switched to a multi-mineral supplement in order to avail the benefits of magnesium and zinc. I expected to take this supplement approximately daily, and it looks like that is roughly what my intake rate of the supplement averaged to.');
