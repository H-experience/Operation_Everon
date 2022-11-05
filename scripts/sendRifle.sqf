


scriptName "sendRifle";
private ["_createdVehicle", "_mygroup", "_wp1", "_wp2", "_wp4"];
removeAllActions RadioHQ;

_createdVehicle = "cwr3_b_m939_open" createvehicle (getPosATL spawn1);
_createdVehicle setDir 180;
_mygroup = [getPosATL spawn1, west, ["cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82", "cwr3_b_soldier82"]] call BIS_fnc_spawnGroup;
_mygroup addVehicle _createdVehicle;


_wp2 = _mygroup addWaypoint [getmarkerpos "wp1", 0];
_wp2 setWaypointType "GETOUT";
_wp2 setWaypointBehaviour"AWARE";


_mygroup addWaypoint [getmarkerpos "wp3",0];


_wp4 = _mygroup addWaypoint [getmarkerpos "obj1",0];
_wp4 setWaypointType "SAD";

_wp1 = _mygroup addWaypoint [getmarkerpos "obj1",0];
_wp1 setWaypointType "GUARD";

waitUntil {getpos _createdVehicle inArea [getmarkerpos "wp1", 10, 10, 0, false, -1]};
sleep 30;
deleteVehicle _createdVehicle;