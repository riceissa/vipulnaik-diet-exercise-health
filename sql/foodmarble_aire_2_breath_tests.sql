create table foodmarble_aire_2_breath_tests(
  reading_date date,
  index_within_reading_date integer,
  minutes_since_last_food_consumption integer,
  number_of_meals_consumed_so_far_in_day integer,
  /* for the two fermentation score values below, the estimated ppm value is 5 times the fermentation score if fermentation score is between 0 and 8, and grows superlinearly (and faster than 5x) beyond 8 */
  hydrogen_fermentation_score decimal(3,1), /* diagnostic threshold for SIBO with a proper prep diet and timed tests is: >= 20 ppm (aka 4 points in fermentation score) increase from baseline within the first 2 hours */
  methane_fermentation_score decimal(3,1), /* diagnostic threshold for IMO with a proper prep diet and timed tests is: >= 10 ppm (aka 2.0 fermentation score) at any time within the first 2 or 3 hours after eating */
  notes varchar(2000),
  primary key (reading_date, index_within_reading_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into foodmarble_aire_2_breath_tests(reading_date, index_within_reading_date, minutes_since_last_food_consumption, number_of_meals_consumed_so_far_in_day, hydrogen_fermentation_score, methane_fermentation_score, notes) values
  /* 2024-08-24 */
  ('2024-08-24',1,311,1,1.5,0.7,'This reading, taken at 5:11 PM, was my first reading with the device. I had finished my first meal consumption that day at around noon (12 PM). My last water consumption was at around 5 PM. At the time of this reading, I did not have any noticeable bloating, gas, or stomach rumble, though I had had off-and-on mild abdominal pain.'),
  ('2024-08-24',2,70,2,1.2,0.0,'This reading, taken at 7:40 PM, was my first post-dinner reading. I had finished dinner around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up. My last water consumption was at around 7:10 PM. At the time of this reading, I did not have any noticeable bloating, gas, or stomach rumble, though I had had off-and-on mild abdominal pain.'),
  ('2024-08-24',3,135,2,0.5,4.1,'This reading, taken at 8:45 PM, was my second post-dinner reading. I had finished dinner around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up. My last water consumption and my last urination were at around 8:20 PM. At the time of this reading, I had started experiencing small amounts of gas, and continued to have mild abdominal pain, but I did not experience bloating or stomach rumble.'),
  ('2024-08-24',4,209,2,1.6,8.3,'This reading, taken at 9:59 PM, was my third post-dinner reading. I had finished dinner around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up. My last water consumption and my last urination were at around 9:20 PM. At the time of this reading, I had stopped having noticeable gas, and did not have any noticeable bloating or stomach rumble. There continued to be mild off-and-on abdominal pain.'),
  /* 2024-08-25 */
  ('2024-08-25',1,853,0,0.5,0.0,'This reading, taken at 8:43 AM, was taken about 20 minutes after completing my morning bowel movement and before eating anything for the day. I do not remember having drunk any water between the bowel movement and the reading, though I did brush my teeth after the bowel movement. I had finished dinner the previous day around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up.'),
  ('2024-08-25',2,980,0,0.4,0.0,'This reading, taken at 10:50 AM, was taken about an hour after returning from exercise and about 55 minutes after I last drank water. It was still before my first meal. I had finished dinner the previous day around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up.'),
  ('2024-08-25',3,345,1,1.4,0.0,'This reading, taken at 6:17 PM, was taken about 5 hours 45 minutes after I finished eating my first meal, which was at 12:32 PM. I had attempted to take additional readings in the interim but my exhale hadn''t been recognized at the time, which might have been due to technical issues. So, I don''t have data for intermediate data points.'),
  /* 2024-08-26 */
  ('2024-08-26',1,203,1,0.2,0.0,'This reading, taken at 3:45 PM, was taken about 3 hours 23 minutes after I finished eating my first meal, which was at 12:32 PM. I had attempted to take a reading at 2:15 PM but it had not worked, so this is my first reading of the day.'),
  /* 2024-09-04 */
  ('2024-09-04',1,91,1,0.6,2.3,'This reading, taken at 2:11 PM, was taken about 1.5 hours after I finished eating my first meal, which was at 12:40 PM. This was my first reading with the new FoodMarble Aire 2 device after I replaced the device as a result of my previous device no longer working.'),
  ('2024-09-04',2,183,1,0.4,0.8,'This reading, taken at 3:43 PM, was taken about 3 hours after I finished eating my first meal, which was at 12:40 PM. This was a followup reading to the previous reading, and showed a subsiding of the overall fermentation activity, but the same relative pattern of hydrogen and methane as the previous reading.'),
  /* 2024-09-05 */
  ('2024-09-05',1,867,0,0.7,0.5,'This reading, taken at 9:17 AM, was before eating any food in the morning. I had finished my meal last night at 6:50 PM. At the time of the reading, I was experiencing a little bit of stomach rumble which seems likely driven by a supplement, but otherwise feeling fine.'),
  ('2024-09-05',2,141,1,0.3,1.8,'This reading, taken at 3:41 PM, was a little over 2 hours after finishing my meal, which I estimate to have been at around 1:20 PM. At the time of the reading, I was still experiencing traces of stomach rumble and flatulence from the morning but they were receding, and seemed unrelated to the recent meal consumption.'),
  ('2024-09-05',3,173,2,0.9,0.2,'This reading, taken at 10:53 PM, was almost 3 hours after finishing my dinner meal, which I estimate to have been at around 8 PM.'),
  /* 2024-09-07 */
  ('2024-09-07',1,45,1,0.3,0.0,'This reading, taken at 2:36 PM, was about 45 minutes after I finished my first meal at 1:51 PM. This was my first meal in a while with peas, so I wanted to get multiple readings to see if my fermentation scores were higher than usual with the consumption of peas. At least that wasn''t the case with this first reading, which is likely before the time the food reached the colon.'),
  ('2024-09-07',2,122,1,0.3,0.0,'This reading, taken at 3:53 PM, was about 2 hours after I finished my first meal at 1:51 PM. This was my first meal in a while with peas, so I wanted to get multiple readings to see if my fermentation scores were higher than usual with the consumption of peas. Fermentation levels appear to continue to be low as of this reading (and in fact identical to the previous reading), with seemingly no fermentation of methane.'),
  ('2024-09-07',3,149,2,1.1,0.0,'This reading, taken at 10:29 PM, was about 2.5 hours after I finished my second meal at 8 PM. At around this time, I felt a surge in pain/cramping in the area below the belly button, so I was curious to see if this reflected an increase in fermentation. The FoodMarble reading suggests that this wasn''t the case.'),
  /* 2024-09-09 */
  ('2024-09-09',1,75,2,1.2,0,'This reading, taken at 8:18 PM, was about 1 hour 15 minutes after I finished my second meal at 7:03 PM. This was a planned reading in light of resumption of sauerkraut today, along with the resumption of peas two days ago that I was continuing to consume. The FoodMarble reading suggests that I continued to not have methane and had relatively low hydrogen levels.'),
  ('2024-09-09',2,176,2,1.5,0,'This reading, taken at 9:59 PM, was about 3 hours after I finished my second meal at 7:03 PM. As with the previous reading, this reading showed low levels of hydrogen fermentation and continued to show no methane fermentation.'),
  /* 2024-09-10 */
  ('2024-09-10',1,1027,0,0.7,0,'This reading, taken at 12:10 PM, was about 17 hours after my second meal of yesterday at 7:03 PM. This reading continued to have zero methane fermentation and had a relatively low level of hydrogen fermentation.'),
  ('2024-09-10',2,107,1,0.4,0,'This reading, taken at 3:19 PM, was about 1 hour 45 minutes after my first meal that I finished around 1:32 PM. This reading continued to have zero methane fermentation and had a relatively low level of hydrogen fermentation.'),
  ('2024-09-10',3,131,2,1.2,0,'This reading, taken at 9:31 PM, was a little over 2 hours after my second meal that I finished around 7:20 PM. This reading continued to have zero methane fermentation and had a relatively low level of hydrogen fermentation, though it was higher than the two readings earlier in the day.'),
  /* 2024-09-11 */
  ('2024-09-11',1,118,2,5.1,0,'This reading, taken at 9:06 PM, was almost 2 hours after my second meal that I finished around 7:08 PM. This reading continued to have zero methane fermentation but higher hydrogen fermentation that I have seen in the past. I''m not sure of the reason for the high fermentation (it likely has to do with my dietary relaxation); however, the timing is consistent with the possibility that this is coming partly from the large intestine, and isn''t indicative of high methane fermentation in the small intestine. This high reading was not correlated with worse symptoms; in fact, this was a relatively good time symptom-wise.'),
  ('2024-09-11',2,199,2,2.3,0,'This reading, taken at 10:27 PM, was over 3 hours after my second meal that I finished around 7:08 PM. This reading continued to have zero methane fermentation and the hydrogen fermentation had dropped considerably compared to the previous reading. I had attempted to take this reading at 10:24 PM but the device had falsely registered my breath even before I started breathing out into it, resulting in a spuriously low fermentation score, so I had to retake the reading.'),
  /* 2024-09-12 */
  ('2024-09-12',1,94,1,0.4,0.3,'This reading, taken at 4:13 PM, was about 1.5 hours after my first meal that I finished around 2:39 PM. Unlike the readings of the past few days, this reading had a small nonzero methane fermentation score. The hydrogen fermentation score was low, unlike the somewhat high fermentation scores seen yesterday evening.'),
  /* 2024-09-15 */
  ('2024-09-15',1,97,1,1.4,0,'This reading, taken at 2:59 PM, was about 1.5 hours after I finished my first meal at 1:22 PM. The methane fermentation score returned to zero (after becoming nonzero in the preceding reading after a long stretch of zeros). The hydrogen fermentation score was low, as desired.'),
  /* 2024-09-20 */
  ('2024-09-20',1,149,1,0.9,0,'This reading, taken at 5:13 PM, was about 2.5 hours after I finished my first meal at 2:44 PM. The methane fermentation score continued to be zero, and the hydrogen fermentation score continued to be low, as desired.'),
  /* 2024-09-27 */
  ('2024-09-27',1,113,1,0.4,0.7,'This reading, taken at 3:23 PM, was a little under 2 hours after I finished my first meal at 1:30 PM. The methane fermentation score was up from zero to 0.7, but the hydrogen fermentation score continued to be low and the overall fermentation score was low.'),
  /* 2024-10-04 */
  ('2024-10-04',1,116,1,0.5,0.7,'This reading, taken at 3:37 PM, was a little under 2 hours after I finished my first meal at 1:41 PM. The fermentation scores were low and very similar to the previous reading taken about a week ago.'),
  /* 2024-10-07 */
  ('2024-10-07',1,157,1,0.9,0.4,'This reading, taken at 3:45 PM, was about 2.5 hours after I finished my first meal at 1:08 PM. The fermentation scores were low and very similar to the past few readings.'),
  /* 2024-10-08 */
  ('2024-10-08',1,138,2,0.6,0,'This reading, taken at 10:55 PM, was about 2 hours 18 minutes after I finished my second meal at 8:37 PM. The fermentation scores were slightly lower than my last few readings with the methane returning to zero. The day I took this reading was the day I started experiencing more significant abdominal discomfort symptoms; see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-08-onward-abdominal-discomfort-and-other-symptoms.md for details.'),
  /* 2024-10-11 */
  ('2024-10-11',1,94,2,1.8,0,'This reading, taken at 9:35 PM, was about 1.5 hours after I finished my second meal at 8:01 PM. The hydrogen fermentation score was a little higher than the last few readings but still in the low range; the methane fermentation score continued to be zero. The higher fermentation score did not seem to be connected with an increase in flatulence or abdominal discomfort compared to previous readings. This was also the first reading after I started taking Atrantil; see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-08-onward-abdominal-discomfort-and-other-symptoms.md and https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-02-atrantil-purchase.md for more context.'),
  /* 2024-10-13 */
  ('2024-10-13',1,95,1,0.4,0.3,'This reading, taken at 2:07 PM, was about 1.5 hours after I finished my first meal at 12:32 PM. The hydrogen fermentation score was low relative to the previous reading, and the methane fermentation score was back to being nonzero. This was my second reading after starting Atrantil; see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-08-onward-abdominal-discomfort-and-other-symptoms.md and https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-02-atrantil-purchase.md for more context.'),
  /* 2024-10-18 */
  ('2024-10-18',1,146,1,0.5,0,'This reading, taken at 3:51 PM, was about 2.5 hours after I finished my first meal at 1:25 PM. The hydrogen fermentation score continued to be low (at 0.5) and the methane fermentation score returned to 0. This was two days after stopping Atrantil, and confirms that there was no rebound fermentation from stopping. However, I had experienced occasional flatulence during the day and also continued to experience intermittent abdominal discomfort. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-08-onward-abdominal-discomfort-and-other-symptoms.md and https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-02-atrantil-purchase.md for more context.'),
  /* 2024-10-21 */
  ('2024-10-21',1,119,2,1.0,0,'This reading, taken at 8:50 PM, was about 2 hours after I finished my second meal at 6:51 PM. The hydrogen fermentation score continued to be low (at 1.0) though it was a little higher than usual, and the methane fermentation score was still at 0. At this time, I had resumed taking Atrantil for three days.'),
  /* 2024-10-25 */
  ('2024-10-25',1,772,0,1.0,0,'This reading, taken at 8:38 AM, was in the morning after bowel movement and prior to any meals. I had finished my previous meal at 7:46 PM the previous night. The hydrogen fermentation score continued to be low (at 1.0) albeit higher than what I''d expect such a long time after having a meal, and the methane fermentation score was still at 0. At this time, I had stopped taking Atrantil. I''d had greater abdominal discomfort than usual after my meal last night, though I was feeling fine after the bowel movement.'),
  /* 2024-11-04 */
  ('2024-11-04',1,137,2,2.1,0,'This reading, taken at 9:03 PM, was a little over 2 hours after I had finished my second meal at 6:46 PM. The hydrogen fermentation score, at 2.1, was higher than usual, but still in the low range. The methane fermentation score continued to be low. I was not experiencing any flatulence or related symptoms this time, though I had had some of these symptomps in the past couple of days after kimchi consumption.'),
  /* 2024-11-10 */
  ('2024-11-10',1,107,1,0.4,0.3,'This reading, taken at 4:10 PM, was a little under 2 hours after I had finished my first meal at 2:23 PM. On this day, I was feeling a little more abdominal discomfort than usual, likely as a result of overexertion the previous day. The hydrogen fermentation score, at 0.4, was lower than usual. The methane fermentation score, at 0.3, was nonzero after a while, but still fairly low and comparable with past nonzero readings.'),
  /* 2024-11-18 */
  ('2024-11-18',1,132,2,3.7,0,'This reading, taken at 9:40 PM, was a little over 2 hours after I had finished my second meal at 7:28 PM. The hydrogen fermentation score was higher than usual. Due to the cold weather, I''ve been having larger meals and also taking longer to finish meals, both of which are factors that might explain the higher-than-usual reading: more food, and more time since the beginning of the meal means more of it has entered the large intestine. Qualitatively, I did not feel any sensation of bloating and had lower-than-usual flatulence, and my evening meal was somewhat lower on FODMAPs than usual (as I had not included peas in the recent potatoes prep) though the meals of the past few days have been high on FODMAPs. Overall, I don''t know how much to read into this reading, so I plan to follow up with another reading this week to see if there''s a trend or if this reading was anomalous.'),
  /* 2024-11-24 */
  ('2024-11-24',1,196,2,2.5,0.3,'This reading, taken at 12:10 AM on 2024-11-24 (i.e., just after midnight), was a little over 3 hours after I had finishd my second meal at around 8:54 PM on 2024-11-23. The hydrogen fermentation score, though higher than usual, was lower than the previous reading, although the greater time interval since my last meal compared to my typical readings makes direct comparisons harder. The methan fermentation score, at 0.3, was nonzero, and consistent with the value it generally takes when nonzero. My guess is that 0.3 is the lowest detectable methane level so whether my score comes to 0 or 0.3 may depend a bit on chance.'),
  /* 2024-11-27 */
  ('2024-11-27',1,107,2,7.0,0.0,'This reading, taken at 9:51 PM, was a little less than 2 hours after I finished my second meal at 8:04 PM (I had started this meal at 7:24 PM). The hydrogen fermentation score of 7.0 is the highest I have ever recorded with the device. It may be a reflection of the buildup of food inside my GI tract due to the sleep disruption and slight bowel movement cycle disruption that led to the anal swelling that https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-11-25-anal-swelling.md documents. Although I had the bowel movement prior to the reading, the reading is based on levels in the blood which in turn is a lagging indicator of fermentation happening in the intestines, so it is likely affected by the buildup of food prior to the reading. Overall, the high reading is concerning so I''m planning to take more frequent readings for the next few days to understand the pattern and, if needed, make appopriate dietary adjustments.'),
  /* 2024-11-28 */
  ('2024-11-28',1,855,0,1.5,0.0,'This reading, taken at 10:19 AM, was taken in the morning, about half an hour after bowel movement, and a little oer 14 hours after I had finished my last meal at 8:04 PM the previous night. I had taken a reading the previous night as well, that had shown a very high hydrogen fermentation score, so this was a followup reading to make sure that my fermentation score was not consistently high. The fermentation score, while still a little high for a morning reading prior to eating anything, was at least not super-high which was a relief.'),
  /* 2024-11-30 */
  ('2024-11-30',1,106,2,1.6,0.5,'This reading, taken at 10:11 PM, was a little less than 2 hours after I finished my second meal at 8:25 PM (I had started the meal at 7:47 PM). The hydrogen fermentation score is back to normal after an unusually high reading 3 days ago under similar conditions, but the methane fermentation score is somewhat nontrivial. Given my recent issues with anal swelling and multiple bowel movements, I plan to continue monitoring the fermentation score regularly for the near future.');
