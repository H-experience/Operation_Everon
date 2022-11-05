


scriptName "sendHeli";
private ["_createdVehicle2", "_mygroup2", "_wp12", "_wp22", "_wp42"];


_createdVehicle2 = "cwr3_o_mi8_amt" createvehicle (getmarkerpos "spawn2");
//_createdVehicle2 setDir 330;
_mygroup2 = [getmarkerpos "spawn2", east, ["cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier"]] call BIS_fnc_spawnGroup;
//_mygroup2 = [getmarkerpos "spawn2", east, ["cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier", "cwr3_o_soldier",]] call BIS_fnc_spawnGroup;
_mygroup2 addVehicle _createdVehicle2;


_wp22 = _mygroup2 addWaypoint [getmarkerpos "wp4", 0];
_wp22 setWaypointType "GETOUT";
_wp22 setWaypointBehaviour"AWARE";


_wp42 = _mygroup2 addWaypoint [getmarkerpos "obj2",0];
_wp42 setWaypointType "SAD";

_wp12 = _mygroup2 addWaypoint [getmarkerpos "obj2",0];
_wp12 setWaypointType "GUARD";

//waitUntil {getpos _createdVehicle inArea [getmarkerpos "wp1", 10, 10, 0, false, -1]};
//sleep 30;
//deleteVehicle _createdVehicle;