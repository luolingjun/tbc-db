-- Missing Silvermoon Guardian spawns
DELETE FROM `creature` WHERE `guid` IN (56933,56934) AND `id` = 16221;

-- Missing Pathing for Silvermoon Guardian Entry: 16221 - Updated
SET @GROUP_ID := 5300000; -- Eversong Woods (Fairbreeze Village) - Silvermoon Guardian (2) Patrol 000
UPDATE `creature` SET `position_x`=9266.465,`position_y`=-6550.5283,`position_z`=33.899437,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=55783;
UPDATE `creature` SET `position_x`=9266.465,`position_y`=-6550.5283,`position_z`=33.899437,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=55802;

-- Silvermoon Guardian 16221
SET @GROUP_ID := 5300006;
REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Eversong Woods (North Sanctum) - Silvermoon Guardian (2) Patrol 001', '0', '0', '0', '0');

DELETE FROM `spawn_group_spawn` WHERE `Id` = @GROUP_ID;
REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, 55783, '0'),
(@GROUP_ID, 55802, '1');

REPLACE INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @GROUP_ID, 2, 'Eversong Woods (North Sanctum) - Silvermoon Guardian (2) Patrol 001');

REPLACE INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (5300006, 'Eversong Woods (North Sanctum) - Silvermoon Guardian (2) Patrol 001');
DELETE FROM `waypoint_path` WHERE `PathId` = @GROUP_ID;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GROUP_ID,1,9266.465,-6550.5283,33.899437,100,0,0),
(@GROUP_ID,2,9293.746,-6554.2383,34.66549,100,0,0),
(@GROUP_ID,3,9304.031,-6546.539,34.710205,100,0,0),
(@GROUP_ID,4,9293.746,-6554.2383,34.66549,100,0,0),
(@GROUP_ID,5,9266.465,-6550.5283,33.899437,100,0,0),
(@GROUP_ID,6,9250.883,-6548.068,32.404564,100,0,0),
(@GROUP_ID,7,9224.099,-6560.443,31.990011,100,0,0),
(@GROUP_ID,8,9193.114,-6584.202,32.66605,100,0,0),
(@GROUP_ID,9,9167.324,-6612.1104,31.284536,100,0,0),
(@GROUP_ID,10,9133.162,-6619.7676,28.557425,100,0,0),
(@GROUP_ID,11,9114.433,-6633.276,25.546194,100,0,0),
(@GROUP_ID,12,9097.9,-6655.489,22.157452,100,0,0),
(@GROUP_ID,13,9105.405,-6682.3037,21.1005,100,0,0),
(@GROUP_ID,14,9067.467,-6683.3013,17.133951,100,0,0),
(@GROUP_ID,15,9099.714,-6683.9517,20.850382,100,0,0),
(@GROUP_ID,16,9133.104,-6695.377,23.682104,100,0,0),
(@GROUP_ID,17,9167.279,-6711.8447,25.629526,100,0,0),
(@GROUP_ID,18,9199.781,-6718.539,25.85908,100,0,0),
(@GROUP_ID,19,9210.716,-6723.7095,25.60611,100,0,0),
(@GROUP_ID,20,9233.276,-6753.362,25.13524,100,0,0),
(@GROUP_ID,21,9245.07,-6795.2314,23.175833,100,0,0),
(@GROUP_ID,22,9243.104,-6833.158,17.046247,100,0,0),
(@GROUP_ID,23,9222.052,-6864.4595,11.268669,100,0,0),
(@GROUP_ID,24,9243.097,-6833.186,16.985456,100,0,0),
(@GROUP_ID,25,9245.063,-6795.26,23.050833,100,0,0),
(@GROUP_ID,26,9233.276,-6753.362,25.13524,100,0,0),
(@GROUP_ID,27,9210.716,-6723.7095,25.60611,100,0,0),
(@GROUP_ID,28,9199.781,-6718.539,25.85908,100,0,0),
(@GROUP_ID,29,9167.279,-6711.8447,25.629526,100,0,0),
(@GROUP_ID,30,9133.104,-6695.377,23.682104,100,0,0),
(@GROUP_ID,31,9099.714,-6683.9517,20.850382,100,0,0),
(@GROUP_ID,32,9067.467,-6683.3013,17.133951,100,0,0),
(@GROUP_ID,33,9105.405,-6682.3037,21.1005,100,0,0),
(@GROUP_ID,34,9097.9,-6655.489,22.157452,100,0,0),
(@GROUP_ID,35,9114.433,-6633.276,25.546194,100,0,0),
(@GROUP_ID,36,9133.075,-6619.799,28.557425,100,0,0),
(@GROUP_ID,37,9167.324,-6612.1104,31.284536,100,0,0),
(@GROUP_ID,38,9193.114,-6584.202,32.66605,100,0,0),
(@GROUP_ID,39,9224.099,-6560.443,31.990011,100,0,0),
(@GROUP_ID,40,9250.883,-6548.068,32.404564,100,0,0);

-- Missing Pathing for Silvermoon Guardian Entry: 16221 - Updated
SET @GROUP_ID := 5300000; -- Eversong Woods (Fairbreeze Village) - Silvermoon Guardian (2) Patrol 000
UPDATE `creature` SET `position_x`=8715.267,`position_y`=-6672.605,`position_z`=70.42766 WHERE `guid`=56888;
UPDATE `creature` SET `position_x`=8713.267,`position_y`=-6674.605,`position_z`=70.42766 WHERE `guid`=56887;
DELETE FROM `waypoint_path` WHERE `PathId` = @GROUP_ID;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GROUP_ID,1,8715.267,-6672.605,70.42766,100,1000,0),
(@GROUP_ID,2,8737.004,-6677.9756,69.692726,100,0,0),
(@GROUP_ID,3,8766.34,-6649.9844,65.844604,100,0,0),
(@GROUP_ID,4,8800.046,-6648.526,58.3881,100,0,0),
(@GROUP_ID,5,8833.269,-6643.5005,50.18699,100,0,0),
(@GROUP_ID,6,8849.173,-6651.176,47.035736,100,0,0),
(@GROUP_ID,7,8866.991,-6675.4517,41.270267,100,0,0),
(@GROUP_ID,8,8899.804,-6689.4243,34.136967,100,0,0),
(@GROUP_ID,9,8916.354,-6683.544,30.945305,100,0,0),
(@GROUP_ID,10,8932.791,-6675.3047,27.625359,100,0,0),
(@GROUP_ID,11,8966.553,-6677.99,19.577826,100,0,0),
(@GROUP_ID,12,8993.152,-6682.3535,12.287277,100,0,0),
(@GROUP_ID,13,8954.701,-6678.256,22.425604,100,0,0),
(@GROUP_ID,14,8920.981,-6691.671,30.165886,100,0,0),
(@GROUP_ID,15,8900.156,-6691.5723,34.207634,100,0,0),
(@GROUP_ID,16,8874.535,-6684.9375,38.95142,100,0,0),
(@GROUP_ID,17,8840.451,-6660.2134,47.16092,100,0,0),
(@GROUP_ID,18,8826.833,-6652.768,50.834267,100,0,0),
(@GROUP_ID,19,8788.527,-6658.085,61.695183,100,0,0),
(@GROUP_ID,20,8766.815,-6659.2095,65.99828,100,0,0),
(@GROUP_ID,21,8754.134,-6666.499,67.703735,100,0,0),
(@GROUP_ID,22,8731.106,-6700.3823,72.841774,100,0,0),
(@GROUP_ID,23,8716.5205,-6733.499,80.80049,100,0,0),
(@GROUP_ID,24,8716.629,-6767.98,88.37359,100,0,0),
(@GROUP_ID,25,8711.674,-6779.87,89.74212,100,0,0),
(@GROUP_ID,26,8703.4795,-6790.086,91.71819,100,1000,0),
(@GROUP_ID,27,8711.617,-6779.955,89.72039,100,0,0),
(@GROUP_ID,28,8716.629,-6767.98,88.37359,100,0,0),
(@GROUP_ID,29,8716.5205,-6733.499,80.80049,100,0,0),
(@GROUP_ID,30,8731.04,-6700.5215,72.90366,100,0,0),
(@GROUP_ID,31,8754.134,-6666.499,67.703735,100,0,0),
(@GROUP_ID,32,8766.815,-6659.2095,65.99828,100,0,0),
(@GROUP_ID,33,8788.527,-6658.085,61.695183,100,0,0),
(@GROUP_ID,34,8826.833,-6652.768,50.834267,100,0,0),
(@GROUP_ID,35,8840.451,-6660.2134,47.16092,100,0,0),
(@GROUP_ID,36,8874.453,-6684.9043,38.96497,100,0,0),
(@GROUP_ID,37,8900.156,-6691.5723,34.207634,100,0,0),
(@GROUP_ID,38,8920.981,-6691.671,30.165886,100,0,0),
(@GROUP_ID,39,8954.594,-6678.215,22.448065,100,0,0),
(@GROUP_ID,40,8993.152,-6682.3535,12.287277,100,0,0),
(@GROUP_ID,41,8966.553,-6677.99,19.577826,100,0,0),
(@GROUP_ID,42,8932.791,-6675.3047,27.625359,100,0,0),
(@GROUP_ID,43,8916.354,-6683.544,30.945305,100,0,0),
(@GROUP_ID,44,8899.804,-6689.4243,34.136967,100,0,0),
(@GROUP_ID,45,8866.991,-6675.4517,41.270267,100,0,0),
(@GROUP_ID,46,8849.173,-6651.176,47.035736,100,0,0),
(@GROUP_ID,47,8833.269,-6643.5005,50.18699,100,0,0),
(@GROUP_ID,48,8800.046,-6648.526,58.3881,100,0,0),
(@GROUP_ID,49,8766.34,-6649.9844,65.844604,100,0,0),
(@GROUP_ID,50,8737.004,-6677.9756,69.692726,100,0,0);
