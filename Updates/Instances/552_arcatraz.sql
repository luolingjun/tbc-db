/* DBScriptData
DBName: Tempest Keep - The Arcatraz
DBScriptName: instance_arcatraz
DB%Complete: 80
DBComment:
* Arcatraz Sentinel no respawn as they respawn with 100% hp
* (@CGUID+86, @CGUID+80, 32768); -- Warden Mellichar -> Unchained Doombringer -- Need FLAG_AGGRO_ON_DEATH as the Death of the last Unchained Doombringer should put the group in combat with Endboss Event

* Multiple NPCs have 2 or more waypoints and should rnd move around this point for x seconds before going to next waypoint
* Example cguid+36 moves to point 1, gets rnd movement for ~10 seconds, moves to point 2, gets rnd movement for ~10 seconds, moves back to point 1 and so on
* guids with this behavior:
* sgguid+6 - all 3 of the group gets their own rnd movement
* sgguid+7 - all 3 of the group gets their own rnd movement
* cguid+36, cguid+38, cguid+58, cguid+59, cguid+60, cguid+61, cguid+66, cguid+68
*
* cguid+13 and cguid+14 have a rly wierd movement, its either totaly rnd (like we have atm) or rnd choosing between ~10 or more waypoints
EndDBScriptData */

SET @CGUID := 5520000; -- creatures
SET @OGUID := 5520000; -- gameobjects
SET @PGUID := 48900; -- pools
SET @SGGUID := 5520000; -- spawn_groups
SET @STRINGID := 5520000; -- used for StringID's
SET @RELAYID := 5520000; -- used for dbscript_on_relay


-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+9, 1, 186.8511, -17.043463, -10.028533, 100, 100, 5),
(@CGUID+9, 2, 154.92224, 0.133047, -10.1021595, 100, 0, 0),
(@CGUID+9, 3, 118.42155, 0.256821, -10.136737, 100, 100, 6),
(@CGUID+9, 4, 107.806114, 1.4212999, -10.160327, 100, 100, 2),
(@CGUID+12, 1, 208.37445, 22.330988, 48.193367, 100, 1, 5),
(@CGUID+12, 2, 216.14856, 22.3947, 48.27127, 100, 0, 0),
(@CGUID+12, 3, 280.1431, 22.352139, 48.35042, 100, 0, 0),
(@CGUID+12, 4, 327.02222, 22.415138, 48.35042, 100, 0, 0),
(@CGUID+12, 5, 365.33887, 22.197266, 48.212696, 100, 0, 0),
(@CGUID+12, 6, 414.51904, 22.458496, 48.214485, 100, 0, 0),
(@CGUID+12, 7, 458.984, 1.867482, 48.221653, 100, 0, 0),
(@CGUID+12, 8, 468.03598, 14.782437, 49.484177, 100, 0, 0),
(@CGUID+12, 9, 459.82727, 37.411278, 50.84645, 100, 0, 0),
(@CGUID+12, 10, 434.82935, 44.72688, 49.352238, 100, 0, 0),
(@CGUID+12, 11, 414.516, 22.780737, 48.215786, 100, 0, 0),
(@CGUID+12, 12, 365.25113, 22.579336, 48.212696, 100, 0, 0),
(@CGUID+12, 13, 326.98926, 22.717283, 48.35042, 100, 0, 0),
(@CGUID+12, 14, 280.14618, 22.75021, 48.35042, 100, 0, 0),
(@CGUID+12, 15, 233.10696, 22.53368, 48.33978, 100, 0, 0),
(@CGUID+16, 1, 166.14273, 146.77989, 22.441147, 100, 1, 5),
(@CGUID+16, 2, 176.24336, 130.70343, 22.441147, 100, 0, 0),
(@CGUID+16, 3, 206.13625, 147.05757, 22.540552, 100, 0, 0),
(@CGUID+16, 4, 244.60933, 146.82315, 22.280828, 100, 0, 0),
(@CGUID+16, 5, 284.55133, 144.52907, 22.221207, 100, 0, 0),
(@CGUID+16, 6, 301.51114, 107.04327, 22.224653, 100, 0, 0),
(@CGUID+16, 7, 301.12772, 67.612755, 22.438244, 100, 0, 0),
(@CGUID+16, 8, 301.1913, 74.152245, 22.453333, 100, 0, 0),
(@CGUID+16, 9, 300.1723, 132.34288, 22.228413, 100, 0, 0),
(@CGUID+16, 10, 284.58438, 144.91377, 22.22117, 100, 0, 0),
(@CGUID+16, 11, 244.56267, 147.19673, 22.280977, 100, 0, 0),
(@CGUID+16, 12,228.7991, 147.2889, 22.307953, 100, 0, 0),
(@CGUID+16, 13, 206.13211, 147.52689, 22.540571, 100, 0, 0),
(@CGUID+16, 14, 176.72488, 163.51595, 22.441147, 100, 0, 0),
(@CGUID+19, 1, 216.848, -18.8814, -10.0988, 0.296885, 0, 0),
(@CGUID+19, 2, 224.405, -10.9059, -9.18466, 1.19931, 0, 0),
(@CGUID+19, 3, 224.719, -4.69658, -8.65524, 1.5441, 0, 0),
(@CGUID+19, 4, 219.63, 5.64645, -7.4853, 2.18342, 0, 0),
(@CGUID+19, 5, 207.05, 16.8875, -7.46839, 2.54077, 0, 0),
(@CGUID+19, 6, 198.094, 21.969, -8.38857, 2.45831, 0, 0),
(@CGUID+19, 7, 189.256, 21.1475, -9.35965, 3.23428, 0, 0),
(@CGUID+19, 8, 184.529, 17.1224, -10.0637, 3.84689, 0, 0),
(@CGUID+19, 9, 184.106, -12.7646, -10.1119, 4.69826, 0, 0),
(@CGUID+19, 10, 197.46, -22.8893, -10.1035, 5.63446, 0, 0),
(@CGUID+19, 11, 196.538, -38.4966, -10.1035, 4.67941, 0, 0),
(@CGUID+19, 12, 196.503, -61.2816, -10.0907, 4.71083, 0, 0),
(@CGUID+19, 13, 202.605, -63.8882, -10.0996, 5.8795, 0, 0),
(@CGUID+19, 14, 208.134, -60.9671, -10.0854, 0.595344, 0, 0),
(@CGUID+19, 15, 209.609, -48.5543, -10.0796, 1.73731, 0, 0),
(@CGUID+19, 16, 209.366, -22.7744, -10.0799, 1.58023, 0, 0),
(@CGUID+19, 17, 213.747, -20.2203, -10.0749, 0.5278, 0, 0),
-- reworked
(@CGUID+33, 1, 276.79434,-145.29054,-10.11652, 100, 0, 0),
(@CGUID+33, 2, 256.17062,-143.82663,-10.110913, 100, 0, 0),
(@CGUID+33, 3, 245.10881,-143.02563,-10.110268, 100, 0, 0),
(@CGUID+33, 4, 245.43143,-128.669,-10.117723, 100, 0, 0),
(@CGUID+33, 5, 221.3861,-128.95544,-10.114537, 100, 0, 0),
(@CGUID+33, 6, 207.70795,-129.07368,-10.109515, 100, 0, 0),
(@CGUID+34, 1, 208.53522,-152.27895,-10.112484, 100, 0, 0),
(@CGUID+34, 2, 221.87071,-152.57721,-10.11229, 100, 0, 0),
(@CGUID+34, 3, 237.18454,-152.618,-10.10515, 100, 0, 0),
(@CGUID+34, 4, 253.95305,-152.81169,-10.106597, 100, 0, 0),
(@CGUID+34, 5, 253.27829,-175.50299,-10.103562, 100, 0, 0),
-- Entropic Eye / Death Watcher
-- They have 2 waypoints, and they gonna rnd move for ~20-30 seconds at this position
(@CGUID+36, 1, 232.48465,-138.72578,-10.11108, 100, 0, 0),
(@CGUID+36, 2, 214.05183,-138.74442,-10.110648, 100, 0, 0),
(@CGUID+38, 1, 257.83023,-125.83658,-10.123239, 100, 0, 0),
(@CGUID+38, 2, 258.53995,-147.47809,-10.109458, 100, 0, 0),
-- protean horror intro waypoints
(@CGUID+46, 1, 176.223, 8.54549, -9.98461, 100, 0, 0),
(@CGUID+46, 2, 157.84132,0.62546,-10.102133, 100, 0, 0),
(@CGUID+46, 3, 140.85771,0.796949,-10.101937, 100, 0, 0),
(@CGUID+46, 4, 123.21317,0.05694,-10.102104, 100, 0, 0),
(@CGUID+46, 5, 88.4931,0.287307,-11.026913, 100, 100, 2),
(@CGUID+47, 1, 183.572, 16.4955, -10.0309, 100, 0, 0),
(@CGUID+47, 2, 157.84132,0.62546,-10.102133, 100, 0, 0),
(@CGUID+47, 3, 140.85771,0.796949,-10.101937, 100, 0, 0),
(@CGUID+47, 4, 123.21317,0.05694,-10.102104, 100, 0, 0),
(@CGUID+47, 5, 88.4931,0.287307,-11.026913, 100, 100, 2),
(@CGUID+48, 1, 185.691, 22.1126, -9.58162, 100, 0, 0),
(@CGUID+48, 2, 157.84132,0.62546,-10.102133, 100, 0, 0),
(@CGUID+48, 3, 140.85771,0.796949,-10.101937, 100, 0, 0),
(@CGUID+48, 4, 123.21317,0.05694,-10.102104, 100, 0, 0),
(@CGUID+48, 5, 88.4931,0.287307,-11.026913, 100, 100, 2),
(@CGUID+49, 1, 189.86, 12.663, -10.0084, 100, 0, 0),
(@CGUID+49, 2, 157.84132,0.62546,-10.102133, 100, 0, 0),
(@CGUID+49, 3, 140.85771,0.796949,-10.101937, 100, 0, 0),
(@CGUID+49, 4, 123.21317,0.05694,-10.102104, 100, 0, 0),
(@CGUID+49, 5, 88.4931,0.287307,-11.026913, 100, 100, 2),
(@CGUID+50, 1, 176.218, -8.04078, -10.0188, 100, 0, 0),
(@CGUID+50, 2, 157.84132,0.62546,-10.102133, 100, 0, 0),
(@CGUID+50, 3, 140.85771,0.796949,-10.101937, 100, 0, 0),
(@CGUID+50, 4, 123.21317,0.05694,-10.102104, 100, 0, 0),
(@CGUID+50, 5, 88.4931,0.287307,-11.026913, 100, 100, 2),
(@CGUID+51, 1, 182.631, -12.4686, -10.0272, 100, 0, 0),
(@CGUID+51, 2, 157.84132,0.62546,-10.102133, 100, 0, 0),
(@CGUID+51, 3, 140.85771,0.796949,-10.101937, 100, 0, 0),
(@CGUID+51, 4, 123.21317,0.05694,-10.102104, 100, 0, 0),
(@CGUID+51, 5, 88.4931,0.287307,-11.026913, 100, 100, 2),
(@CGUID+52, 1, 182.755, -19.8442, -10.0229, 100, 0, 0),
(@CGUID+52, 2, 157.84132,0.62546,-10.102133, 100, 0, 0),
(@CGUID+52, 3, 140.85771,0.796949,-10.101937, 100, 0, 0),
(@CGUID+52, 4, 123.21317,0.05694,-10.102104, 100, 0, 0),
(@CGUID+52, 5, 88.4931,0.287307,-11.026913, 100, 100, 2),
(@CGUID+53, 1, 191.813, -17.5303, -10.0188, 100, 0, 0),
(@CGUID+53, 2, 157.84132,0.62546,-10.102133, 100, 0, 0),
(@CGUID+53, 3, 140.85771,0.796949,-10.101937, 100, 0, 0),
(@CGUID+53, 4, 123.21317,0.05694,-10.102104, 100, 0, 0),
(@CGUID+53, 5, 88.4931,0.287307,-11.026913, 100, 100, 2),
(@CGUID+58, 1, 291.263, 6.76101, 22.5245, 100, 10000, 0), -- move rnd around for 5-10 seconds
(@CGUID+58, 2, 308.48526,-14.237305,22.443472, 100, 10000, 0), -- move rnd around for 5-10 seconds
(@CGUID+59, 1, 275.325, 37.1431, 22.5245, 100, 100000, 0), -- move rnd around for 5-10 seconds
(@CGUID+59, 2, 265.88467,55.07243,22.441204, 100, 10000, 0), -- move rnd around for 5-10 seconds
(@CGUID+60, 1, 267.79776, -15.569478, 22.448706, 100, 10000, 0), -- move rnd around for 5-10 seconds
(@CGUID+60, 2, 275.1938, 4.183415, 22.44412, 100, 10000, 0), -- move rnd around for 5-10 seconds
(@CGUID+61, 1, 298.612, 57.0632, 22.5251, 100, 10000, 0), -- move rnd around for 5-10 seconds
(@CGUID+61, 2, 295.16656,39.336628,22.441162, 100, 10000, 0), -- move rnd around for 5-10 seconds
(@CGUID+66,1, 200.01999, 143.80635, 22.404247, 100, 27000, 0), -- move rnd around for 25-30 seconds
(@CGUID+66,2, 199.71545, 135.69438, 22.45939, 100, 0, 0),
(@CGUID+66,3, 188.94356, 135.94778, 22.441149, 100, 0, 0),
(@CGUID+66,4, 178.95024, 136.18616, 22.441147, 100, 27000, 0), -- move rnd around for 25-30 seconds
(@CGUID+66,5, 184.20561, 134.37573, 22.441147, 100, 0, 0),
(@CGUID+66,6, 193.13338, 134.66946, 22.571707, 100, 0, 0),
(@CGUID+66,7, 199.88423, 134.85597, 22.37441, 100, 0, 0),
(@CGUID+68, 1, 180.26875, 151.43074, 22.441147, 100, 27000, 0),-- move rnd around for 25-30 seconds
(@CGUID+68, 2, 179.83174, 157.97197, 22.441147, 100, 0, 0),
(@CGUID+68, 3, 189.29553, 157.5333, 22.44115, 100, 0, 0),
(@CGUID+68, 4, 198.717, 156.83224, 22.364504, 100, 27000, 0), -- move rnd around for 25-30 seconds
(@CGUID+68, 5, 189.48445, 157.87857, 22.44115, 100, 0, 0),
(@CGUID+68, 6, 180.3669, 158.23933, 22.441147, 100, 0, 0),
(@CGUID+78, 1, 456.1953, -162.02287, 43.097973, 100, 0, 0),
(@CGUID+78, 2, 444.38632, -151.77869, 43.037457, 100, 0, 0),
(@CGUID+78, 3, 437.77167, -136.3138, 43.100117, 100, 0, 0),
(@CGUID+78, 4, 441.69543, -123.04215, 43.10011, 100, 0, 0),
(@CGUID+78, 5, 445.06357, -105.65653, 43.100105, 100, 0, 0),
(@CGUID+78, 6, 446.46475, -89.316284, 43.100094, 100, 0, 0),
(@CGUID+78, 7, 446.41287, -65.38533, 48.39542, 100, 0, 0),
(@CGUID+149, 1, 164.571, 164.083, 22.4412, 5.65782, 0, 0),
(@CGUID+149, 2, 170.578, 160.263, 22.4412, 5.71673, 0, 0),
(@CGUID+149, 3, 169.973, 154.136, 22.4412, 4.73498, 0, 0),
(@CGUID+149, 4, 169.182, 141.596, 22.4412, 4.73498, 0, 0),
(@CGUID+149, 5, 168.66, 131.837, 22.4412, 4.73498, 0, 0),
(@CGUID+149, 6, 156.824, 125.214, 22.4412, 3.6904, 0, 0),
(@CGUID+149, 7, 167.874, 131.315, 22.4412, 0.537026, 0, 0),
(@CGUID+149, 8, 169.395, 142.563, 22.4412, 1.63187, 0, 0),
(@CGUID+149, 9, 169.308, 160.427, 22.4412, 1.56904, 0, 0),
(@CGUID+149, 10, 160.217, 167.234, 22.4018, 2.57435, 0, 0),
(@CGUID+150, 1, 124.99534, 147.42181, 22.441147, 100, 0, 0),
(@CGUID+150, 2, 155.76085, 137.09187, 20.814901, 100, 0, 0),
(@CGUID+150, 3, 172.89482, 137.45894, 22.441147, 100, 0, 0),
(@CGUID+150, 4, 190.26704, 137.98639, 22.441149, 100, 0, 0),
(@CGUID+150, 5, 190.19278, 146.74756, 22.441149, 100, 0, 0),
(@CGUID+150, 6, 190.34236, 155.19014, 22.44115, 100, 0, 0),
(@CGUID+150, 7, 172.85747, 156.48407, 22.441147, 100, 0, 0),
(@CGUID+150, 8, 156.17549, 158.80054, 20.814901, 100, 0, 0);

INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- Protean Horror 01 - Path 1 
(20865, 1, 1, 274.492, -160.3677, -10.11127, 100, 1, 5),
(20865, 1, 2, 261.6127, -189.98672, -10.10487, 100, 0, 0),
(20865, 1, 3, 227.53447, -192.88065, -10.105654, 100, 0, 0),
(20865, 1, 4, 234.71745, -166.73166, -10.107577, 100, 0, 0),
(20865, 1, 5, 274.492, -160.3677, -10.11127, 100, 1, 2086501),
-- Protean Horror 01 - Path 2
(20865, 2, 1, 274.492, -160.3677, -10.11127, 100, 1, 5),
(20865, 2, 2, 230.67825, -159.68645, -10.113051, 100, 0, 0),
(20865, 2, 3, 230.01398, -122.99717, -10.118055, 100, 0, 0),
(20865, 2, 4, 260.8361, -119.30777, -10.123237, 100, 0, 0),
(20865, 2, 5, 274.492,-160.3677,-10.11127, 100, 1, 2086501),
-- Protean Horror 01 - Path 3
(20865, 3, 1, 274.492, -160.3677, -10.11127, 100, 1, 5),
(20865, 3, 2, 246.39204, -144.1044, -10.109891, 100, 0, 0),
(20865, 3, 3, 216.76047, -123.82127, -10.108683, 100, 0, 0),
(20865, 3, 4, 202.98213, -110.55506, -10.123076, 100, 0, 0),
(20865, 3, 5, 194.93211, -130.28767, -10.12011, 100, 0, 0),
(20865, 3, 6, 194.4479, -140.82317, -10.118727, 100, 0, 0),
(20865, 3, 7, 224.49347, -142.0825, -10.110895, 100, 0, 0),
(20865, 3, 8, 253.40977, -160.71367, -10.1047535, 100, 0, 0),
(20865, 3, 9, 274.492, -160.3677, -10.11127, 100, 1, 2086501),
-- Protean Horror 02 - Path 1 
(20865, 4, 1, 220.35661, -161.02452, -10.113402, 100, 1, 5),
(20865, 4, 2, 236.75801, -193.39262, -10.107179, 100, 0, 0),
(20865, 4, 3, 260.3886, -194.68185, -10.105082, 100, 0, 0),
(20865, 4, 4, 268.60522, -158.09924, -10.105517, 100, 0, 0),
(20865, 4, 5, 237.7268, -160.15494, -10.101749, 100, 0, 0),
(20865, 4, 6, 220.80006, -160.14894, -10.113282, 100, 1, 2086502),
-- Protean Horror 02 - Path 2
(20865, 5, 1, 220.35661, -161.02452, -10.113402, 100, 1, 5),
(20865, 5, 2, 202.58867, -149.75804, -10.114253, 100, 0, 0),
(20865, 5, 3, 202.54631, -119.9808, -10.119678, 100, 0, 0),
(20865, 5, 4, 235.29565, -126.66605, -10.1168585, 100, 0, 0),
(20865, 5, 5, 260.4425, -120.10798, -10.123238, 100, 0, 0),
(20865, 5, 6, 261.34445, -148.69566, -10.109158, 100, 0, 0),
(20865, 5, 7, 220.35661, -161.02452, -10.113402, 100, 1, 2086502),
-- Protean Horror 02 - Path 3
(20865, 6, 1, 220.35661, -161.02452, -10.113402, 100, 1, 5),
(20865, 6, 2, 220.80006, -160.14894, -10.113282, 100, 0, 0),
(20865, 6, 3, 228.45674, -182.32353, -0.4047474, 100, 0, 0),
(20865, 6, 4, 242.84274, -189.01254, 6.2220397, 100, 0, 0),
(20865, 6, 5, 258.3724, -185.33528, 13.020767, 100, 0, 0),
(20865, 6, 6, 267.94284, -170.10384, 20.863707, 100, 0, 0),
(20865, 6, 7, 267.90543, -139.87071, 22.630386, 100, 0, 0),
(20865, 6, 8, 267.39816, -90.36618, 22.497723, 100, 0, 0),
(20865, 6, 9, 267.5015, -100.45144, 22.546911, 100, 0, 0),
(20865, 6, 10, 267.20602, -169.32367, 21.112097, 100, 0, 0),
(20865, 6, 11, 258.33258, -183.84918, 13.519743, 100, 0, 0),
(20865, 6, 12, 243.24022, -187.99068, 6.286567, 100, 0, 0),
(20865, 6, 13, 229.67354, -182.05469, -0.16981333, 100, 0, 0),
(20865, 6, 14, 220.35661, -161.02452, -10.113402, 100, 1, 2086502);

-- INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(20857, 0, 0, 1, 333, 0, '38805'), -- Arcatraz Defender - Immolate (previously in ACID)
(20859, 0, 0, 2, 376, 0, NULL), -- Arcatraz Warder
(20864, 0, 0, 1, 0, 0, NULL), -- Protean Nightmare
(20865, 0, 0, 1, 0, 0, NULL), -- Protean Horror
(20866, 0, 0, 1, 0, 0, NULL), -- Soul Devourer
(20867, 0, 0, 1, 0, 0, NULL), -- Death Watcher
(20870, 0, 0, 1, 0, 0, NULL), -- Zereketh the Unbound
(20873, 0, 0, 1, 0, 0, '19818'), -- Negaton Warp-Master
(20875, 0, 0, 1, 0, 0, NULL), -- Negaton Screamer
(20880, 0, 0, 1, 0, 0, ''), -- Eredar Deathbringer
(20881, 0, 0, 1, 0, 0, NULL), -- Unbound Devastator
(20882, 0, 0, 1, 0, 0, '16380'), -- Skulking Witch
(20883, 0, 0, 1, 0, 0, NULL), -- Spiteful Temptress
(20885, 0, 0, 1, 0, 0, NULL), -- Dalliah the Doomsayer
(20896, 0, 0, 1, 0, 0, NULL), -- Ethereum Slayer
(20897, 0, 0, 1, 0, 0, NULL), -- Ethereum Wave-Caster
(20898, 0, 0, 1, 0, 0, NULL), -- Gargantuan Abyssal
(20900, 0, 0, 1, 0, 0, NULL), -- Unchained Doombringer
(20901, 0, 0, 1, 0, 0, NULL), -- Sargeron Archer
(20902, 0, 0, 1, 0, 0, NULL), -- Sargeron Hellcaller
(20904, 0, 0, 1, 0, 0, '36852'), -- Warden Mellichar
(20978, 0, 0, 1, 0, 0, NULL), -- Wrath-Scryer's Felfire
(21186, 0, 0, 1, 0, 0, NULL), -- Arcane Warder Target
(21303, 0, 0, 1, 0, 0, '29266'), -- Defender Corpse
(21304, 0, 0, 1, 0, 0, '29266'), -- Warder Corpse
(21346, 0, 0, 1, 0, 0, '36649'), -- Sightless Eye
(21436, 0, 0, 1, 0, 0, NULL), -- Tempest Keep Prison Alpha Pod Target
(21437, 0, 0, 1, 0, 0, NULL), -- Tempest Keep Prison Beta Pod Target
(21438, 0, 0, 1, 0, 0, NULL), -- Tempest Keep Prison Delta Pod Target
(21439, 0, 0, 1, 0, 0, NULL), -- Tempest Keep Prison Gamma Pod Target
(21440, 0, 0, 1, 0, 0, '36852'), -- Tempest Keep Prison Boss Pod Target
(21702, 0, 0, 1, 0, 0, NULL), -- Ethereum Life-Binder
(21962, 0, 0, 1, 0, 0, '29266'); -- Udalo

-- INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(21466, 552, 20912, 4112, 0), -- Harbinger Skyriss -> Harbinger Skyriss
(21467, 552, 20912, 4112, 0); -- Harbinger Skyriss -> Harbinger Skyriss

-- INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES

DELETE FROM creature_spawn_data WHERE Guid IN (@CGUID+15, @CGUID+39, @CGUID+13, @CGUID+14);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES 
-- Protean Horror
(@CGUID+15, 2086501),
(@CGUID+39, 2086502),
(@CGUID+13, 1),
(@CGUID+14, 1);

DELETE FROM creature_spawn_data_template WHERE Entry IN (2086501, 2086502);
INSERT INTO `creature_spawn_data_template` (`Entry`, `RelayId`, `StringId`, `Name`) VALUES 
(2086501, @RELAYID+1, 0, 'Protean Horror - Start relayscript on spawn'),
(2086502, @RELAYID+5, 0, 'Protean Horror - Start relayscript on spawn');


INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 15384, 552, 3, 466.582, -126.723, 43.1834, 3.7001, 7200, 7200, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+2, 20857, 552, 3, 101.977, -2.98757, -10.1691, 0.20944, 7200, 7200, 0, 0), -- Arcatraz Defender
(@CGUID+3, 20857, 552, 3, 103.497, 1.23046, -10.1701, 6.21804, 7200, 7200, 0, 0), -- Arcatraz Defender
(@CGUID+4, 20857, 552, 3, 101.624, 6.57745, -10.1856, 5.8294, 7200, 7200, 0, 0), -- Arcatraz Defender
(@CGUID+5, 20859, 552, 3, 69.6491, -14.8739, -10.0332, 0.541052, 7200, 7200, 0, 0), -- Arcatraz Warder
(@CGUID+6, 20859, 552, 3, 73.3906, -16.7659, -10.0612, 0.541052, 7200, 7200, 0, 0), -- Arcatraz Warder
(@CGUID+7, 20859, 552, 3, 76.9442, 18.8223, -10.1055, 5.68977, 7200, 7200, 0, 0), -- Arcatraz Warder
(@CGUID+8, 20859, 552, 3, 73.8442, 17.5507, -10.0701, 5.89921, 7200, 7200, 0, 0), -- Arcatraz Warder
(@CGUID+9, 20864, 552, 3, 186.8511, -17.043463, -10.028533, 1.75680, 10, 10, 0, 2), -- Protean Nightmare
(@CGUID+10, 20864, 552, 3, 208.993, 6.98038, -7.38507, 0.74831, 7200, 7200, 0, 0), -- Protean Nightmare
(@CGUID+11, 20864, 552, 3, 202.78, -41.4077, -10.0187, 5.84685, 7200, 7200, 0, 0), -- Protean Nightmare
(@CGUID+12, 20865, 552, 3, 208.37445, 22.330988, 48.193367, 6.2772, 7200, 7200, 0, 2), -- Protean Horror
(@CGUID+13, 20865, 552, 3, 284.425, 39.5287, 22.5245, 3.42709, 7200, 7200, 30, 1), -- Protean Horror
(@CGUID+14, 20865, 552, 3, 284.465, -5.35082, 22.5245, 1.90966, 7200, 7200, 30, 1), -- Protean Horror
(@CGUID+15, 20865, 552, 3, 274.55026,-161.28899,-10.110444, 2.60, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+16, 20865, 552, 3, 166.14273, 146.77989, 22.441147, 2.5913522, 7200, 7200, 0, 2), -- Protean Horror
(@CGUID+17, 20865, 552, 3, 212.919, 6.28938, -7.38507, 0.311741, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+18, 20865, 552, 3, 208.762, 11.0853, -7.38507, 6.00414, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+19, 20865, 552, 3, 203.914, -56.3795, -10.0144, 0.123065, 25, 25, 0, 0), -- Protean Horror
(@CGUID+20, 20865, 552, 3, 200.566, -55.4827, -10.0178, 6.0259, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+21, 20865, 552, 3, 203.65, -60.4947, -10.0155, 0.499034, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+22, 20865, 552, 3, 202.513, -57.6073, -10.0839, 6.217, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+23, 20865, 552, 3, 198.804, -58.2479, -10.0106, 6.16678, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+24, 20865, 552, 3, 200.716, -60.7629, -10.0145, 0.159309, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+25, 20865, 552, 3, 201.551, -36.3583, -10.0187, 5.67892, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+26, 20865, 552, 3, 205.741, -44.8498, -10.0129, 3.64967, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+27, 20865, 552, 3, 200.498, -118.427, -10.0377, 3.10863, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+28, 20865, 552, 3, 200.933, -116.515, -10.0799, 3.51618, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+29, 20865, 552, 3, 200.014, -115.796, -10.0399, 3.40614, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+30, 20865, 552, 3, 201.692, -113.662, -10.0399, 3.59385, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+31, 20865, 552, 3, 200.498, -118.427, -10.0377, 3.10863, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+32, 20865, 552, 3, 203.556, -117.874, -10.0371, 3.46516, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+33, 20866, 552, 3, 276.79434, -145.29054, -10.11652, 3.0579, 7200, 7200, 0, 4), -- Soul Devourer
(@CGUID+34, 20866, 552, 3, 208.53522,-152.27895,-10.112484, 6.1362, 7200, 7200, 0, 4), -- Soul Devourer
(@CGUID+35, 0, 552, 3, 265.94, -184.657, -10.105, 0.148303, 7200, 7200, 8, 1), -- spawn_group_entry
(@CGUID+36, 0, 552, 3, 232.225, -138.710, -10.111, 2.40855, 7200, 7200, 0, 2), -- spawn_group_entry
(@CGUID+37, 0, 552, 3, 244.464, -156.903, -10.0211, 2.56403, 7200, 7200, 8, 1), -- spawn_group_entry
(@CGUID+38, 0, 552, 3, 257.83023,-125.83658,-10.123239, 0.9138, 7200, 7200, 0, 2), -- spawn_group_entry
(@CGUID+39, 20865, 552, 3, 220.35661,-161.02452,-10.113402, 2.60445, 7200, 7200, 0, 0), -- Protean Horror
(@CGUID+40, 0, 552, 3, 226.184, -162.096, -10.0352, 0.349066, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+41, 20869, 552, 3, 264.287, -61.3211, 22.4534, 5.28835, 7200, 7200, 0, 0), -- Arcatraz Sentinel
(@CGUID+42, 20869, 552, 3, 253.942, 131.8811, 22.39496, 0.7679449, 7200, 7200, 0, 0), -- Arcatraz Sentinel
(@CGUID+43, 20869, 552, 3, 255.4978, 158.9143, 22.36194, 5.410521, 7200, 7200, 0, 0), -- Arcatraz Sentinel
(@CGUID+44, 20869, 552, 3, 336.514, 27.4267, 48.426, 3.83972, 7200, 7200, 0, 0), -- Arcatraz Sentinel
(@CGUID+45, 20869, 552, 3, 395.413, 18.1948, 48.296, 2.49582, 7200, 7200, 0, 0), -- Arcatraz Sentinel
-- Entrance RP Protean Horror
(@CGUID+46, 20865, 552, 3, 176.223, 8.54549, -9.98461, 4.57276, 1, 1, 0, 2), -- Protean Horror
(@CGUID+47, 20865, 552, 3, 183.572, 16.4955, -10.0309, 0.890118, 1, 1, 0, 2), -- Protean Horror
(@CGUID+48, 20865, 552, 3, 185.691, 22.1126, -9.58162, 1.22173, 1, 1, 0, 2), -- Protean Horror
(@CGUID+49, 20865, 552, 3, 189.86, 12.663, -10.0084, 3.03687, 1, 1, 0, 2), -- Protean Horror
(@CGUID+50, 20865, 552, 3, 176.218, -8.04078, -10.0188, 4.01426, 1, 1, 0, 2), -- Protean Horror
(@CGUID+51, 20865, 552, 3, 182.631, -12.4686, -10.0272, 1.58825, 1, 1, 0, 2), -- Protean Horror
(@CGUID+52, 20865, 552, 3, 182.755, -19.8442, -10.0229, 5.21853, 1, 1, 0, 2), -- Protean Horror
(@CGUID+53, 20865, 552, 3, 191.813, -17.5303, -10.0188, 3.28122, 1, 1, 0, 2), -- Protean Horror
(@CGUID+54, 0, 552, 3, 275.086, -192.666, -10.0268, 3.01942, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+55, 0, 552, 3, 272.103, -59.0341, 22.4533, 0.506145, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+56, 0, 552, 3, 263.595, -43.7782, 22.4562, 2.58309, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+57, 20870, 552, 3, 275.788, -123.343, -10.1232, 6.13695, 86400, 86400, 5, 1), -- Zereketh the Unbound
(@CGUID+58, 20873, 552, 3, 291.263, 6.76101, 22.5245, 3.77076, 7200, 7200, 0, 2), -- Negaton Warp-Master
(@CGUID+59, 20873, 552, 3, 275.325, 37.1431, 22.5245, 5.2761, 7200, 7200, 0, 2), -- Negaton Warp-Master
(@CGUID+60, 20875, 552, 3, 266.75012, -17.823483, 22.449232, 5.8992, 7200, 7200, 0, 2), -- Negaton Screamer
(@CGUID+61, 20875, 552, 3, 298.612, 57.0632, 22.5251, 1.65806, 7200, 7200, 0, 2), -- Negaton Screamer
(@CGUID+62, 20875, 552, 3, 285.004, 23.033, 20.8982, 3.39418, 7200, 7200, 5, 1), -- Negaton Screamer
(@CGUID+63, 20879, 552, 3, 285.519, 146.155, 22.3118, 5.79449, 7200, 7200, 0, 0), -- Eredar Soul-Eater
(@CGUID+64, 0, 552, 3, 305.736, 148.059, 24.8633, 3.97935, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+65, 20880, 552, 3, 301.797, 127.444, 22.3108, 1.309, 7200, 7200, 0, 0), -- Eredar Deathbringer
(@CGUID+66, 20881, 552, 3, 200.01999,143.80635,22.404247, 0.027622, 7200, 7200, 0, 2), -- Unbound Devastator
(@CGUID+67, 0, 552, 3, 148.05, 146.994, 20.8982, 6.26573, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+68, 20883, 552, 3, 180.26875, 151.43074, 22.441147, 1.8325957, 7200, 7200, 0, 2), -- Spiteful Temptress
(@CGUID+69, 0, 552, 3, 264.271, -191.28, -10.0219, 5.61996, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+70, 20885, 552, 3, 137.234, 128.506, 22.5245, 1.01229, 86400, 86400, 0, 0), -- Dalliah the Doomsayer
(@CGUID+71, 20886, 552, 3, 136.2, 168.31, 22.5245, 5.23599, 86400, 86400, 0, 0), -- Wrath-Scryer Soccothrates
(@CGUID+72, 20896, 552, 3, 433.027, 6.10896, 48.2954, 2.87979, 7200, 7200, 0, 0), -- Ethereum Slayer
(@CGUID+73, 20896, 552, 3, 429.812, 12.0886, 48.2949, 5.20108, 7200, 7200, 0, 0), -- Ethereum Slayer
(@CGUID+74, 20896, 552, 3, 442.6864, -1.3589563, 48.21277, 4.69740, 7200, 7200, 0, 0), -- Ethereum Slayer
(@CGUID+75, 20896, 552, 3, 442.58783, -7.935695, 48.212776, 4.6974, 7200, 7200, 0, 0), -- Ethereum Slayer
(@CGUID+76, 20897, 552, 3, 434.228, 9.77371, 48.2944, 3.57792, 7200, 7200, 0, 0), -- Ethereum Wave-Caster
(@CGUID+77, 20897, 552, 3, 440.03802, -3.5020337, 48.212772, 4.70056, 7200, 7200, 0, 0), -- Ethereum Wave-Caster
(@CGUID+78, 20898, 552, 3, 456.1953, -162.02287, 43.097973, 1.708, 7200, 7200, 0, 4), -- Gargantuan Abyssal
(@CGUID+79, 20898, 552, 3, 452.778, -136.182, 43.1001, 5.45005, 7200, 7200, 5, 1), -- Gargantuan Abyssal
(@CGUID+80, 20900, 552, 3, 429.11, -156.501, 43.0686, 1.99487, 7200, 7200, 5, 1), -- Unchained Doombringer
(@CGUID+81, 20900, 552, 3, 432.257, -114.243, 43.1834, 1.13446, 7200, 7200, 0, 0), -- Unchained Doombringer
(@CGUID+82, 20901, 552, 3, 431.237, -72.8754, 48.4787, 0.174533, 7200, 7200, 0, 0), -- Sargeron Archer
(@CGUID+83, 20901, 552, 3, 460.864, -74.1793, 48.4787, 2.94961, 7200, 7200, 0, 0), -- Sargeron Archer
(@CGUID+84, 20902, 552, 3, 436.245, -76.3012, 48.4787, 1.74533, 7200, 7200, 0, 0), -- Sargeron Hellcaller
(@CGUID+85, 20902, 552, 3,  457.611, -76.815, 48.4787, 1.09956, 7200, 7200, 0, 0), -- Sargeron Hellcaller
(@CGUID+86, 20904, 552, 3, 445.803, -169.007, 43.6442, 4.74729, 43200, 43200, 0, 0), -- Warden Mellichar
(@CGUID+87, 20978, 552, 3, 117.826, 198.081, 22.5245, 5.18363, 300, 300, 0, 0), -- Wrath-Scryer's Felfire
(@CGUID+88, 20978, 552, 3, 117.861, 198.068, 22.5245, 4.41568, 300, 300, 0, 0), -- Wrath-Scryer's Felfire
(@CGUID+89, 20978, 552, 3, 117.914, 198.068, 22.5245, 1.46608, 300, 300, 0, 0), -- Wrath-Scryer's Felfire
(@CGUID+90, 20978, 552, 3, 117.75, 198.164, 22.5245, 3.735, 300, 300, 0, 0), -- Wrath-Scryer's Felfire
(@CGUID+91, 20978, 552, 3, 117.868, 198.278, 22.5245, 1.97222, 300, 300, 0, 0), -- Wrath-Scryer's Felfire
(@CGUID+92, 20978, 552, 3, 117.959, 198.309, 22.5245, 1.65806, 300, 300, 0, 0), -- Wrath-Scryer's Felfire
(@CGUID+93, 21186, 552, 3, 115.734, -1.29285, -10.0188, 0.261799, 7200, 7200, 0, 0), -- Arcane Warder Target
(@CGUID+94, 21186, 552, 3, 114.841, 2.44889, -10.0188, 2.98451, 7200, 7200, 0, 0), -- Arcane Warder Target
(@CGUID+95, 21186, 552, 3, 118.098, 0.268171, -10.0188, 1.69297, 7200, 7200, 0, 0), -- Arcane Warder Target
(@CGUID+96, 0, 552, 3, 197.955, -86.8133, -10.0174, 5.8294, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+97, 0, 552, 3, 206.342, -98.2784, -10.0262, 2.6529, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+98, 0, 552, 3, 213.626, -161.424, -10.0346, 2.74017, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+99, 0, 552, 3, 270.767, -66.623, 22.4534, 5.74213, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+100, 0, 552, 3, 261.949, -49.208, 22.4534, 2.63545, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+101, 0, 552, 3, 229.997, -162.192, -10.0346, 0.0698132, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+102, 0, 552, 3, 276.173, -179.818, -10.0223, 1.43117, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+103, 0, 552, 3, 285.416, 127.127, 22.2951, 4.69494, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+104, 0, 552, 3, 253.689, 139.868, 22.4121, 2.30383, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+105, 0, 552, 3, 253.951, 155.001, 22.3807, 4.93928, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+106, 0, 552, 3, 298.848, 151.748, 22.3105, 5.70723, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+107, 0, 552, 3, 308.183, 139.673, 22.3146, 5.39307, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+108, 0, 552, 3, 272.501, -40.1927, 22.509, 2.9147, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+109, 0, 552, 3, 232.754, -198.125, -10.023, 5.61996, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+110, 0, 552, 3, 262.56, -65.5981, 22.4534, 1.50098, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+111, 0, 552, 3, 312.929, -7.19062, 22.5245, 4.03171, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+112, 0, 552, 3, 311.119, -5.50369, 22.5245, 1.5708, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+113, 0, 552, 3, 293.885, 70.9368, 22.5262, 1.55334, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+114, 0, 552, 3, 291.632, 70.5809, 22.5269, 2.00713, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+115, 0, 552, 3, 395.076, 27.5835, 48.296, 4.41568, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+116, 0, 552, 3, 397.071, 25.3331, 48.296, 0.523599, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+117, 0, 552, 3, 257.344, 155.568, 22.3321, 4.71239, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+118, 0, 552, 3, 210.114, -161.992, -10.0359, 6.12611, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+119, 0, 552, 3, 283.728, 130.245, 22.3065, 0.575959, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+120, 0, 552, 3, 280.357, 133.501, 22.308, 5.044, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+121, 0, 552, 3, 311.196, 125.847, 22.337, 1.64061, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+122, 0, 552, 3, 291.801, 158.914, 22.3234, 5.96903, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+123, 0, 552, 3, 255.173, 137.844, 22.3725, 5.49779, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+124, 0, 552, 3, 392.063, 24.8857, 48.296, 6.16101, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+125, 0, 552, 3, 392.004, 18.3857, 48.296, 1.48353, 86400, 86400, 0, 0), -- spawn_group_entry
(@CGUID+126, 0, 552, 3, 393.459, 15.9235, 48.296, 0.436332, 86400, 86400, 0, 0), -- spawn_group_entry
-- reuse +127
-- reuse +128
-- reuse +129
-- reuse +130
-- reuse +131, 132
-- reuse 133, 134
-- reuse 135, 136
-- reuse 137
-- reuse 138
-- reuse +139
(@CGUID+140, 21436, 552, 3, 478.326, -148.505, 55.2775, 2.54818, 7200, 7200, 0, 0), -- Tempest Keep Prison Alpha Pod Target
(@CGUID+141, 21437, 552, 3, 413.292, -148.378, 54.8771, 0.296706, 7200, 7200, 0, 0), -- Tempest Keep Prison Beta Pod Target
(@CGUID+142, 21438, 552, 3, 420.179, -174.396, 54.8305, 0.087266, 7200, 7200, 0, 0), -- Tempest Keep Prison Delta Pod Target
(@CGUID+143, 21439, 552, 3, 471.795, -174.58, 55.0008, 2.87979, 7200, 7200, 0, 0), -- Tempest Keep Prison Gamma Pod Target
(@CGUID+144, 21440, 552, 3, 445.763, -191.639, 57.5766, 3.9619, 7200, 7200, 0, 0), -- Tempest Keep Prison Boss Pod Target
(@CGUID+145, 21702, 552, 3, 429.409, 7.09051, 48.2896, 1.23918, 7200, 7200, 0, 0), -- Ethereum Life-Binder
(@CGUID+146, 21702, 552, 3, 445.25098, -3.6131277, 48.212765, 4.69741, 7200, 7200, 0, 0), -- Ethereum Life-Binder
(@CGUID+147, 21962, 552, 3, 468.6516, 12.2102, 49.38526, 1.291544, 7200, 7200, 0, 0), -- Udalo
(@CGUID+148, 20882, 552, 3, 160.808, 126.532, 22.5245, 0.942478, 7200, 7200, 0, 0), -- Skulking Witch
(@CGUID+149, 20882, 552, 3, 163.215, 165.66, 22.5245, 5.37561, 7200, 7200, 0, 0), -- Skulking Witch
(@CGUID+150, 20882, 552, 3, 124.99534, 147.42181, 22.441147, 0.942478, 7200, 7200, 0, 2); -- Skulking Witch

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 182198, 552, 3, 320.304, -21.8057, 22.4412, 1.8675, 0, 0, 0, 0, 86400, 86400), -- Arcane Container
(@OGUID+2, 183362, 552, 3, 439.832, 32.7644, 48.2747, -3.10335, 0, 0, 0, 0, 180, 180), -- Brazier
(@OGUID+3, 183363, 552, 3, 455.298, 16.4321, 48.2747, -3.10335, 0, 0, 0, 0, 180, 180), -- Brazier
(@OGUID+4, 183961, 552, 3, 484.1, -150.403, 61.5632, -0.436333, 0, 0, 0, 0, 180, 180), -- Stasis Pod Alpha
(@OGUID+5, 183962, 552, 3, 477.488, -174.455, 61.5633, -0.087266, 0, 0, 0, 0, 43200, 43200), -- Stasis Pod Gamma
(@OGUID+6, 183963, 552, 3, 407.962, -151.243, 61.5632, -2.70526, 0, 0, 0, 0, 180, 180), -- Stasis Pod Beta
(@OGUID+7, 183964, 552, 3, 414.255, -175.364, 61.5589, -3.05433, 0, 0, 0, 0, 180, 180), -- Stasis Pod Delta
(@OGUID+8, 183965, 552, 3, 445.835, -208.129, 73.9555, 3.14159, 0, 0, 0, 0, 43200, 43200), -- Stasis Pod Omega
(@OGUID+9, 184213, 552, 3, -3.77762, 0.178076, -1.55146, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+10, 184214, 552, 3, -3.77762, 0.178076, -1.55146, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+11, 184318, 552, 3, 199.827, 117.488, 23.8766, 3.14159, 0, 0, 0, 0, 43200, 43200), -- Containment Core Security Field Alpha
(@OGUID+12, 184319, 552, 3, 199.911, 102.009, 23.6937, 3.14159, 0, 0, 0, 0, 43200, 43200), -- Containment Core Security Field Beta
(@OGUID+13, 184802, 552, 3, 445.786, -169.263, 43.0466, -0.558505, 0, 0, 0, 0, 43200, 43200); -- Warden's Shield

-- INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- ============
-- SPAWN GROUPS
-- ============

DELETE FROM worldstate_name WHERE Id IN (@SGGUID+1, @SGGUID+2);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(@SGGUID+1, 'The Arcatraz - Proteon Horror'),
(@SGGUID+2, 'The Arcatraz - Proteon Nightmare');

DELETE FROM `conditions` WHERE `condition_entry` IN (@SGGUID+1, @SGGUID+2);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@SGGUID+1, 42, @SGGUID+1, 1, 1, 0, 0, 'The Arcatraz - Proteon Horror'),
(@SGGUID+2, 42, @SGGUID+2, 1, 1, 0, 0, 'The Arcatraz - Proteon Nightmare');

DELETE FROM string_id WHERE Id = @STRINGID+1;
INSERT INTO `string_id` (Id, Name) VALUES 
(@STRINGID+1, 'ARCATRAZ_ENTRANCE_GROUP');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `WorldStateExpression`, `Flags`, `StringID`) VALUES
-- Intro Researches:
-- 9 Protean Horror (small ones) spawning in the back, respawn timer around 1 seconds, keep respawning till all Arcatraz Warders are dead
-- Both spawn_groups 1+2 have to be dead then protean horrors stop spawning 
(@SGGUID+1, 'The Arcatraz - Group 001 - Arcatraz Warder (2) - Right', 0, 0, 0, 0, 1, 0),
(@SGGUID+2, 'The Arcatraz - Group 002 - Arcatraz Warder (2) - Left', 0, 0, 0, 0, 1, 0),
-- 1 Proteon Nightmare (Big One) spawning in the back, respawn timer around 5 seconds, keep respawning till all 3 Arcatraz Defenders are dead
(@SGGUID+3, 'The Arcatraz - Group 003 - Arcatraz Defender (3)', 0, 0, 0, 0, 1, 0),
(@SGGUID+4, 'The Arcatraz - Group 004 - Protean Horror (1)', 0, 0, @SGGUID+1, 0, 0, @STRINGID+1),
(@SGGUID+5, 'The Arcatraz - Group 005 - Protean Nightmare (1)', 0, 0, @SGGUID+2, 0, 0, @STRINGID+1),
(@SGGUID+6, 'The Arcatraz - Group 006 - Protean Nightmare (1) - Protean Horror (2) | Patrol 01', 0, 0, 0, 0, 1, 0),
(@SGGUID+7, 'The Arcatraz - Group 007 - Protean Nightmare (1) - Protean Horror (2) | Patrol 02', 0, 0, 0, 0, 1, 0),
(@SGGUID+8, 'The Arcatraz - Group 008 - Protean Horror (6) | Patrol 03', 0, 0, 0, 0, 1, 0),
(@SGGUID+9, 'The Arcatraz - Group 009 - Warder/Defender Corpse', 0, 0, 0, 0, 0, 0),
(@SGGUID+10, 'The Arcatraz - Group 010 - Warder/Defender Corpse', 0, 0, 0, 0, 0, 0),
-- Boss Room
(@SGGUID+11, 'The Arcatraz - Group 011 - Protean Horror (6) | Patrol 04', 0, 0, 0, 0, 1, 0),
(@SGGUID+12, 'The Arcatraz - Group 012 - Death Watcher / Entropic Eye', 0, 0, 0, 0, 0, 0),
(@SGGUID+13, 'The Arcatraz - Group 013 - Warder/Defender Corpse', 0, 1, 0, 0, 0, 0), -- 4 different spawns only 1 active
(@SGGUID+14, 'The Arcatraz - Group 014 - Warder/Defender Corpse', 0, 1, 0, 0, 0, 0), -- 4 different spawns only 1 active
(@SGGUID+15, 'The Arcatraz - Group 015 - Warder/Defender Corpse', 0, 1, 0, 0, 0, 0), -- 3 different spawns only 1 active
(@SGGUID+16, 'The Arcatraz - Group 016 - Warder/Defender Corpse', 0, 1, 0, 0, 0, 0), -- 3 different spawns only 1 active
(@SGGUID+17, 'The Arcatraz - Group 017 - Warder/Defender Corpse', 0, 2, 0, 0, 0, 0), -- static 2 spawns, rnd entry
(@SGGUID+18, 'The Arcatraz - Group 018 - Warder/Defender Corpse', 0, 2, 0, 0, 0, 0), -- static 2 spawns, rnd entry
(@SGGUID+19, 'The Arcatraz - Group 019 - Warder/Defender Corpse', 0, 2, 0, 0, 0, 0), -- 7 spawns (maybe more) 2 active
(@SGGUID+20, 'The Arcatraz - Group 020 - Warder/Defender Corpse', 0, 1, 0, 0, 0, 0), -- 2 spawns 1 active
(@SGGUID+21, 'The Arcatraz - Group 021 - Warder/Defender Corpse', 0, 2, 0, 0, 0, 0), -- static 2 spawns, rnd entry
(@SGGUID+22, 'The Arcatraz - Group 022 - Eredar Soul-Eater/Eredar Deathbringer', 0, 1, 0, 0, 0, 0), -- rnd entry
(@SGGUID+23, 'The Arcatraz - Group 023 - Skulking Witch', 0, 1, 0, 0, 0, 0), -- static 2 spawns 1 active
(@SGGUID+24, 'The Arcatraz - Group 024 - Unbound Devastator / Spiteful Temptress', 0, 1, 0, 0, 0, 0), -- rnd entry
(@SGGUID+25, 'The Arcatraz - Group 025 - Warder/Defender Corpse', 0, 2, 0, 0, 0, 0), -- 5 different spawns only 1 active
(@SGGUID+26, 'The Arcatraz - Group 026 - Ethereum Slayer (2) - Ethereum Wave-Caster (1) - Ethereum Life-Binder (1)', 0, 0, 0, 0, 1, 0),
(@SGGUID+27, 'The Arcatraz - Group 027 - Ethereum Slayer (2) - Ethereum Wave-Caster (1) - Ethereum Life-Binder (1) | Patrol 05', 0, 0, 0, 0, 1, 0),
(@SGGUID+28, 'The Arcatraz - Group 028 - Sargeron Archer (1) - Sargeron Hellcaller (1)', 0, 0, 0, 0, 1, 0),
(@SGGUID+29, 'The Arcatraz - Group 029 - Sargeron Archer (1) - Sargeron Hellcaller (1)', 0, 0, 0, 0, 1, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+9, 21303, 0, 0, 0), (@SGGUID+9, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+10, 21303, 0, 0, 0), (@SGGUID+10, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+12, 20867, 1, 3, 0), (@SGGUID+12, 20868, 1, 3, 0), -- Death Watcher, Entropic Eye

(@SGGUID+13, 21303, 0, 0, 0), (@SGGUID+13, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+14, 21303, 0, 0, 0), (@SGGUID+14, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+15, 21303, 0, 0, 0), (@SGGUID+15, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+16, 21303, 0, 0, 0), (@SGGUID+16, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+17, 21303, 0, 0, 0), (@SGGUID+17, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+18, 21303, 0, 0, 0), (@SGGUID+18, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+19, 21303, 0, 0, 0), (@SGGUID+19, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+20, 21303, 0, 0, 0), (@SGGUID+20, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+21, 21303, 0, 0, 0), (@SGGUID+21, 21304, 0, 0, 0), -- Defener Corpse, Warder Corpse
(@SGGUID+22, 20879, 0, 0, 0), (@SGGUID+22, 20880, 0, 0, 0), -- Eredar Soul-Eater, Eredar Deathbringer
(@SGGUID+24, 20881, 0, 0, 0), (@SGGUID+24, 20883, 0, 0, 0), -- Unbound Devastator, Spiteful Temptress
(@SGGUID+25, 21303, 0, 0, 0), (@SGGUID+25, 21304, 0, 0, 0); -- Defener Corpse, Warder Corpse

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @CGUID+5, 0, 0), -- Arcatraz Warder - left
(@SGGUID+1, @CGUID+6, 1, 0), -- Arcatraz Warder - right

(@SGGUID+2, @CGUID+7, 0, 0), -- Arcatraz Warder - left
(@SGGUID+2, @CGUID+8, 1, 0), -- Arcatraz Warder - right

(@SGGUID+3, @CGUID+2, 0, 0), -- Arcatraz Defender right
(@SGGUID+3, @CGUID+3, 1, 0), -- Arcatraz Defender middle
(@SGGUID+3, @CGUID+4, 2, 0), -- Arcatraz Defender left

(@SGGUID+4, @CGUID+46, 0, 0), -- Protean Horror
(@SGGUID+4, @CGUID+47, 1, 0), -- Protean Horror
(@SGGUID+4, @CGUID+48, 2, 0), -- Protean Horror
(@SGGUID+4, @CGUID+49, 3, 0), -- Protean Horror
(@SGGUID+4, @CGUID+50, 4, 0), -- Protean Horror
(@SGGUID+4, @CGUID+51, 5, 0), -- Protean Horror
(@SGGUID+4, @CGUID+52, 6, 0), -- Protean Horror
(@SGGUID+4, @CGUID+53, 7, 0), -- Protean Horror

(@SGGUID+5, @CGUID+9, 0, 0), -- Protean Nightmare

(@SGGUID+6, @CGUID+10, 0, 0), -- Protean Nightmare
(@SGGUID+6, @CGUID+17, 1, 0), -- Protean Horror
(@SGGUID+6, @CGUID+18, 2, 0), -- Protean Horror

(@SGGUID+7, @CGUID+11, 0, 0), -- Protean Nightmare
(@SGGUID+7, @CGUID+25, 1, 0), -- Protean Horror
(@SGGUID+7, @CGUID+26, 2, 0), -- Protean Horror

(@SGGUID+8, @CGUID+22, 0, 0), -- Protean Horror
(@SGGUID+8, @CGUID+19, 1, 0), -- Protean Horror
(@SGGUID+8, @CGUID+20, 2, 0), -- Protean Horror
(@SGGUID+8, @CGUID+23, 3, 0), -- Protean Horror
(@SGGUID+8, @CGUID+24, 4, 0), -- Protean Horror
(@SGGUID+8, @CGUID+21, 5, 0), -- Protean Horror

(@SGGUID+9, @CGUID+96, 0, 0), -- spawn_group_entry
(@SGGUID+10, @CGUID+97, 0, 0), -- spawn_group_entry

(@SGGUID+11, @CGUID+28, 0, 0), -- Protean Horror
(@SGGUID+11, @CGUID+31, 1, 0), -- Protean Horror
(@SGGUID+11, @CGUID+27, 2, 0), -- Protean Horror
(@SGGUID+11, @CGUID+32, 3, 0), -- Protean Horror
(@SGGUID+11, @CGUID+30, 4, 0), -- Protean Horror
(@SGGUID+11, @CGUID+29, 5, 0), -- Protean Horror

(@SGGUID+12, @CGUID+35, -1, 0), -- spawn_group_entry
(@SGGUID+12, @CGUID+36, -1, 0), -- spawn_group_entry
(@SGGUID+12, @CGUID+37, -1, 0), -- spawn_group_entry
(@SGGUID+12, @CGUID+38, -1, 0), -- spawn_group_entry

(@SGGUID+13, @CGUID+40, -1, 0), -- spawn_group_entry
(@SGGUID+13, @CGUID+98, -1, 0), -- spawn_group_entry
(@SGGUID+13, @CGUID+101, -1, 0), -- spawn_group_entry
(@SGGUID+13, @CGUID+118, -1, 0), -- spawn_group_entry

(@SGGUID+14, @CGUID+54, -1, 0), -- spawn_group_entry
(@SGGUID+14, @CGUID+69, -1, 0), -- spawn_group_entry
(@SGGUID+14, @CGUID+102, -1, 0), -- spawn_group_entry
(@SGGUID+14, @CGUID+109, -1, 0), -- spawn_group_entry

(@SGGUID+15, @CGUID+55, -1, 0), -- spawn_group_entry
(@SGGUID+15, @CGUID+99, -1, 0), -- spawn_group_entry
(@SGGUID+15, @CGUID+110, -1, 0), -- spawn_group_entry

(@SGGUID+16, @CGUID+56, -1, 0), -- spawn_group_entry
(@SGGUID+16, @CGUID+100, -1, 0), -- spawn_group_entry
(@SGGUID+16, @CGUID+108, -1, 0), -- spawn_group_entry

(@SGGUID+17, @CGUID+111, -1, 0), -- spawn_group_entry
(@SGGUID+17, @CGUID+112, -1, 0), -- spawn_group_entry

(@SGGUID+18, @CGUID+113, -1, 0), -- spawn_group_entry
(@SGGUID+18, @CGUID+114, -1, 0), -- spawn_group_entry

(@SGGUID+19, @CGUID+103, -1, 0), -- spawn_group_entry
(@SGGUID+19, @CGUID+106, -1, 0), -- spawn_group_entry
(@SGGUID+19, @CGUID+107, -1, 0), -- spawn_group_entry
(@SGGUID+19, @CGUID+119, -1, 0), -- spawn_group_entry
(@SGGUID+19, @CGUID+120, -1, 0), -- spawn_group_entry
(@SGGUID+19, @CGUID+121, -1, 0), -- spawn_group_entry
(@SGGUID+19, @CGUID+122, -1, 0), -- spawn_group_entry

(@SGGUID+20, @CGUID+104, -1, 0), -- spawn_group_entry
(@SGGUID+20, @CGUID+123, -1, 0), -- spawn_group_entry

(@SGGUID+21, @CGUID+105, -1, 0), -- spawn_group_entry
(@SGGUID+21, @CGUID+117, -1, 0), -- spawn_group_entry

(@SGGUID+22, @CGUID+64, -1, 0), -- spawn_group_entry

(@SGGUID+23, @CGUID+148, -1, 0), -- Skulking Witch
(@SGGUID+23, @CGUID+149, -1, 0), -- Skulking Witch

(@SGGUID+24, @CGUID+67, -1, 0), -- spawn_group_entry

(@SGGUID+25, @CGUID+115, -1, 0), -- spawn_group_entry
(@SGGUID+25, @CGUID+116, -1, 0), -- spawn_group_entry
(@SGGUID+25, @CGUID+124, -1, 0), -- spawn_group_entry
(@SGGUID+25, @CGUID+125, -1, 0), -- spawn_group_entry
(@SGGUID+25, @CGUID+126, -1, 0), -- spawn_group_entry

(@SGGUID+26, @CGUID+72, 0, 0), -- Ethereum Slayer
(@SGGUID+26, @CGUID+73, 1, 0), -- Ethereum Slayer
(@SGGUID+26, @CGUID+76, 2, 0), -- Ethereum Wave-Caster
(@SGGUID+26, @CGUID+145, 3, 0), -- Ethereum Life-Binder

(@SGGUID+27, @CGUID+74, 0, 0), -- Ethereum Slayer
(@SGGUID+27, @CGUID+75, 1, 0), -- Ethereum Slayer
(@SGGUID+27, @CGUID+146, 2, 0), -- Ethereum Life-Binder
(@SGGUID+27, @CGUID+77, 3, 0), -- Ethereum Wave-Caster

(@SGGUID+28, @CGUID+85, 0, 0), -- Sargeron Hellcaller
(@SGGUID+28, @CGUID+83, 1, 0), -- Sargeron Archer

(@SGGUID+29, @CGUID+84, 0, 0), -- Sargeron Hellcaller
(@SGGUID+29, @CGUID+82, 1, 0); -- Sargeron Archer

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+6, 3, 3, 0, @SGGUID+6, 2, 'The Arcatraz - Group 006 - Protean Nightmare (1) - Protean Horror (2) | Patrol 01'),
(@SGGUID+7, 3, 3, 0, @SGGUID+7, 2, 'The Arcatraz - Group 007 - Protean Nightmare (1) - Protean Horror (2) | Patrol 02'),
(@SGGUID+8, 6, 3, 0, @SGGUID+8, 2, 'The Arcatraz - Group 008 - Protean Horror (6) | Patrol 03'),
(@SGGUID+11, 6, 3, 0, @SGGUID+11, 2, 'The Arcatraz - Group 011 - Protean Horror (6) | Patrol 04'),
(@SGGUID+27, 6, 3, 0, @SGGUID+27, 2, 'The Arcatraz - Group 027 - Ethereum Slayer (2) - Ethereum Wave-Caster (1) - Ethereum Life-Binder (1) | Patrol 05');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+6, 'The Arcatraz - Group 006 - Protean Nightmare (1) - Protean Horror (2) | Patrol 01'),
(@SGGUID+7, 'The Arcatraz - Group 007 - Protean Nightmare (1) - Protean Horror (2) | Patrol 02'),
(@SGGUID+8, 'The Arcatraz - Group 008 - Protean Horror (6) | Patrol 03'),
(@SGGUID+11, 'The Arcatraz - Group 008 - Protean Horror (6) | Patrol 04'),
(@SGGUID+27, 'The Arcatraz - Group 027 - Ethereum Slayer (2) - Ethereum Wave-Caster (1) - Ethereum Life-Binder (1) | Patrol 05');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+6, 1, 208.34787,9.844978, -7.4684005, 2.8623, 20000, 0), -- remove formation, and rnd move around for 20 seconds
(@SGGUID+6, 2, 217.09438, 9.082261, -7.4683995, 100, 0, 0),
(@SGGUID+6, 3, 224.82596, -1.105318, -8.197451, 100, 0, 0),
(@SGGUID+6, 4, 223.71288, -13.408787, -9.599378, 100, 0, 0),
(@SGGUID+6, 5, 212.49054, -17.97817, -10.091022, 100, 0, 0),
(@SGGUID+6, 6, 198.7105, -5.965413, -10.102091, 100, 0, 0),
(@SGGUID+6, 7, 192.63458, 6.129091, -10.10528, 100, 200000, 0), -- remove formation, and rnd move around for 20 seconds
(@SGGUID+6, 8, 183.20636, 12.026545, -10.096576, 100, 0, 0),
(@SGGUID+6, 9, 187.25227, 20.871046, -9.640596, 100, 0, 0),
(@SGGUID+6, 10, 196.87997, 22.969841, -8.600537, 100, 0, 0),
(@SGGUID+6, 11, 205.79718, 18.459171, -7.626488, 100, 0, 0),
(@SGGUID+7, 1, 202.77959, -41.40766, -10.095723, 100, 20000, 0), -- remove formation, and rnd move around for 20 seconds
(@SGGUID+7, 2, 203.17947, -32.20689, -10.101378, 100, 0, 0), 
(@SGGUID+7, 3, 203.19337, -20.843853, -10.093281, 100, 20000, 0), -- remove formation, and rnd move around for 20 seconds
(@SGGUID+8, 1, 208.07149, -29.18059, -10.091507, 100, 0, 0),
(@SGGUID+8, 2, 210.0403, -21.635162, -10.089756, 100, 0, 0),
(@SGGUID+8, 3, 223.61438, -13.931542, -9.641647, 100, 0, 0),
(@SGGUID+8, 4, 223.23763, 3.027244, -7.9025264, 100, 0, 0),
(@SGGUID+8, 5, 201.15181, 21.944275, -8.097511, 100, 0, 0),
(@SGGUID+8, 6, 183.84764, 17.15893, -10.106732, 100, 0, 0),
(@SGGUID+8, 7, 186.73946, 2.564413, -10.102718, 100, 0, 0),
(@SGGUID+8, 8, 197.93507, -17.824755, -10.097534, 100, 0, 0),
(@SGGUID+8, 9, 197.42511, -56.04032, -10.106724, 100, 0, 0),
(@SGGUID+8, 10, 202.3496, -61.534344, -10.108492, 100, 0, 0),
(@SGGUID+8, 11, 208.22867, -57.986126, -10.064104, 100, 0, 0),
(@SGGUID+11, 1, 195.13905, -118.79325,-10.12332, 100, 0, 0),
(@SGGUID+11, 2, 195.03548, -145.50099,-10.116196, 100, 0, 0),
(@SGGUID+11, 3, 212.1964, -157.94833,-10.113149, 100, 0, 0),
(@SGGUID+11, 4, 231.8269, -157.86928,-10.112798, 100, 0, 0),
(@SGGUID+11, 5, 235.90848, -164.12933,-10.106403, 100, 0, 0),
(@SGGUID+11, 6, 235.05792, -181.03023,-10.108897, 100, 0, 0),
(@SGGUID+11, 7, 223.98999, -186.03038,-10.10672, 100, 0, 0),
(@SGGUID+11, 8, 230.39694, -194.16634,-10.107081, 100, 0, 0),
(@SGGUID+11, 9, 259.7843, -195.02864,-10.10507, 100, 0, 0),
(@SGGUID+11, 10, 272.83566, -175.49477, -10.104804, 100, 0, 0),
(@SGGUID+11, 11, 278.45392, -153.14717, -10.1086855, 100, 0, 0),
(@SGGUID+11, 12, 280.5827, -136.87622, -10.121723, 100, 0, 0),
(@SGGUID+11, 13, 261.5679, -119.71741, -10.123237, 100, 0, 0),
(@SGGUID+11, 14, 245.82552, -122.29325, -10.123243, 100, 0, 0),
(@SGGUID+11, 15, 220.30566, -121.72503, -10.117749, 100, 0, 0),
(@SGGUID+11, 16, 202.52419, -114.3171, -10.123289, 100, 0, 0),
(@SGGUID+27, 1, 449.3031, -20.429773, 48.238365, 100, 0, 0),
(@SGGUID+27, 2, 449.4046, 1.538476, 48.219746, 100, 0, 0),
(@SGGUID+27, 3, 463.29834, 5.452207, 48.305122, 100, 0, 0),
(@SGGUID+27, 4, 466.79602, 19.510277, 49.99231, 100, 0, 0),
(@SGGUID+27, 5, 460.21735, 36.802353, 50.84645, 100, 0, 0),
(@SGGUID+27, 6, 439.6564, 44.632866, 49.722843, 100, 0, 0),
(@SGGUID+27, 7, 427.544, 41.33546, 48.411602, 100, 0, 0),
(@SGGUID+27, 8, 426.6427, 32.553425, 48.206783, 100, 0, 0),
(@SGGUID+27, 9, 436.76343, 19.38034, 48.21401, 100, 0, 0),
(@SGGUID+27, 10, 442.88638, 11.988906, 48.23025, 100, 0, 0),
(@SGGUID+27, 11, 442.4002,- 20.45843, 48.212788, 100, 0, 0);

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
-- INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
-- INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscript_random_templates WHERE id BETWEEN @RELAYID+1 AND @RELAYID+3;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
-- Protean Horror 1 - 3 different paths
(@RELAYID+1, 1, @RELAYID+2, 0, 'Protean Horror - Waypoint Path 1'),
(@RELAYID+1, 1, @RELAYID+3, 0, 'Protean Horror - Waypoint Path 2'),
(@RELAYID+1, 1, @RELAYID+4, 0, 'Protean Horror - Waypoint Path 3'),

(@RELAYID+2, 1, @RELAYID+6, 0, 'Protean Horror - Waypoint Path 4'),
(@RELAYID+2, 1, @RELAYID+7, 0, 'Protean Horror - Waypoint Path 5'),
(@RELAYID+2, 1, @RELAYID+8, 0, 'Protean Horror - Waypoint Path 6'),

(@RELAYID+3, 1, @RELAYID+9, 0, 'The Arcatraz - spawn_group_entry - random talk'),
(@RELAYID+3, 1, @RELAYID+10, 0, 'The Arcatraz - spawn_group_entry - random talk'),
(@RELAYID+3, 1, @RELAYID+11, 0, 'The Arcatraz - spawn_group_entry - random talk');

DELETE FROM dbscripts_on_relay WHERE id BETWEEN @RELAYID+1 AND @RELAYID+11;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Protean Horror - on spawn random waypoint movement (3 possible paths)
(@RELAYID+1,0,0,45,0,@RELAYID+1,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror - choose random path'),
-- Path 1
(@RELAYID+2,0,0,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror - PathID 1'),
(@RELAYID+3,0,0,20,2,2,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror - PathID 2'),
(@RELAYID+4,0,0,20,2,3,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror - PathID 3'),

(@RELAYID+5,0,0,45,0,@RELAYID+2,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror - choose random path'),
-- Path 1
(@RELAYID+6,0,0,20,2,4,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror - PathID 4'),
(@RELAYID+7,0,0,20,2,5,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror - PathID 5'),
(@RELAYID+8,0,0,20,2,6,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror - PathID 6'),

(@RELAYID+9,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'The Arcatraz - spawn_group_entry - Emote Talk'),
(@RELAYID+9,0,1,0,0,0,0,0,0,0,19129,0,0,0,0,0,0,0,'The Arcatraz - spawn_group_entry - Say Text'),

(@RELAYID+10,0,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'The Arcatraz - spawn_group_entry - Emote OneShotExclamation'),
(@RELAYID+10,0,1,0,0,0,0,0,0,0,19130,0,0,0,0,0,0,0,'The Arcatraz - spawn_group_entry - Say Text'),

(@RELAYID+11,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'The Arcatraz - spawn_group_entry - Emote Talk'),
(@RELAYID+11,0,1,0,0,0,0,0,0,0,19131,0,0,0,0,0,0,0,'The Arcatraz - spawn_group_entry - Say Text');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2086501, 2086502);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2086501, 0, 0, 45, 0, @RELAYID+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protean Horror - choose random path'),
(2086502, 0, 0, 45, 0, @RELAYID+2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protean Horror - choose random path');

-- Protean Nightmare
-- Todo: 
-- SGGUID+6 and SGGUID+7 will remove formation and let every group member have rnd movement before switching back to formation and continue waypoint rotation
-- (2086401, 0, 0, 51, 151, @SGGUID+6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protean Nightmare - Remove Formation'),
-- (2086401, 0, 1, 20, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protean Nightmare - Change to Movement RND'),
-- (2086401, 19000, 1, 51, 150, @SGGUID+6, 0, 0, 0, 0, 0, 3, 0, 0, 3, 0, 0, 0, 'Protean Nightmare - Create Formation'),
-- (2086401, 20000, 1, 20, @SGGUID+6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protean Nightmare - Change to Waypoint Movement');

-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES



