/* In honor of Heinrich's law, these are incidents where there is no ultimate damage but that got close;
   Heinrich's law woud suggest that these are about 300x as frequent as accidents with damage.
   In some cases, there are implications for protocol updates, but in many others, the frequency is within
   the range of expectations, or the situation is sufficiently unusual, that no clear protocol updates
   are needed.
*/

create table heinrich_incidents(
  date date,
  date_precision enum('day','month','quarter','year'),
  incident_type enum('Walking stumble','Running stumble','Object near-drop','Object drop without damage','Nearly missed refrigeration'),
  incident_details varchar(2000),
  protocol_updates varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/* There was an incident where a laptop screen cover flew while I was
   carrying a laptop so I caught it with one hand and continued
   holding my laptop in the other. This happened on my M1 laptop in
   2022-04.  It doesn't count as an object drop or an object
   near-drop, but still counts as a much higher risk than I should
   have been taking. If I later expand the scope of Heinrich incidents
   I might add this one.*/

/* I started systematically recording these in 2022-05; the list of backfilled historical incidents
   is probably incomplete. */
insert into heinrich_incidents(date, date_precision, incident_type, incident_details, protocol_updates) values
  ('2017-04-01','quarter','Object drop without damage','While placing my phone on a countertop or removing it (I don''t remember) I dropped the phone. It fell on its corner; there was no visible internal or external damage. The height of drop was about 3 feet.','I resolved to be more careful about placing the phone carefully on surfaces.'),
  ('2020-10-01','quarter','Object drop without damage','I was talking on the phone with headphones plugged in while cooking. When I got up to take my food to the kitchen, I pulled on the headphones getting up, pulling the phone causing it to drop (face up) onto the floor. This drop of approximately 3 feet did no visible damage to the phone. The phone was about eighteen months old at the time.','I resolved to be more mindful of whether I''m talking on the phone when getting up.'),
  ('2022-04-20','day','Object near-drop','While putting on my mask because others were nearby, while holding my phone, my phone slipped from my hand, but I was able to catch it quickly. The context was that I was moving out of my old place and there was no furniture (bed, table, etc.) on which to put my phone quickly, as I would usually do. Rather than zip the bag and put it back in the bag, I, in the interest of speed, just kept holding it while wearing my mask, leading to the near-drop.','(1) Remove the phone from my hand when using the hand to do other stuff (I violated this once later in a similar situation where I held my phone while trying to put on a mask; this occurred on 2022-04-30 and here too I was in my old place without access to furniture; one additional complication here was that I had just received a phone call and needed to wear the mask to get the door so that created a sense of urgency that made me forget the criterion). (2) Grip the phone strongly particularly when it''s more than a foot above the surface below or the surface below is rough, and particularly if multiplexing (I continued to follow this even for the violation of (1)). (3) Get a screen protector for my phone since screen damage is the most likely damage from falls from small heights, based on both my personal experience and phone drop test data available online.'),
  ('2022-04-30','day','Object drop without damage','While taking out rotting potatoes when cleaning out my old place, I failed to notice a glass tray attached to the bottom of the potatoes. The tray came apart and fell to the floor but did not break.','This is a highly unusual situation where I was cleaning out stuff that I wasn''t familiar with. It''s important to be careful in such cases, but it is not a typical situation.'),
  ('2022-05-04','day','Object drop without damage','When moving an appliance to the living room in my old place, I failed to notice a glass mug for measurements that was hanging from the wires. It fell without damage.','This is a highly unusual situation where I was cleaning out stuff that I wasn''t familiar with. It''s important to be careful in such cases, but it is not a typical situation.'),
  ('2022-05-10','day','Running stumble','While running on Russell Street, one of my feet hit a bumpy surface and slipped slightly. I did not lose my balance and continued running forward.','No general protocol changes identified yet; I''m already moderately careful and plan to continue being more mindful.'),
  ('2022-06-01','day','Nearly missed refrigeration','While putting my food back into the refrigerator, I missed carrots that were at the bottom of my backpack compartment. Later, while starting to fall asleep, I was thinking about whether I''d put everything in the refrigerator, and remembered the carrots. I checked they aren''t in the fridge, then checked my backpack and found them below the cloth bags that I had put back in the backpack after unpacking their contents into the fridge.','There are two main updates: (1) Before putting cloth bags back into the backpack compartment, check thoroughly the bottom of the backpack compartment. I do this sometimes but didn''t do it yesterday so it''s something I should make a more definite part of protocol. (2) When entering the food purchases into SQL, think consciously about whether I remember putting each item in the fridge, and double-check for any item that I didn''t put in. I did end up using the entered list to identify that I hadn''t put carrots in, but it was several hours after I had entered the list, rather than while entering the list.');

