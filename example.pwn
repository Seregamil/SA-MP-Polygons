//by Seregamil

#include a_samp
#include streamer
#include polygons

main(){

}

new Float:zones_points_0[] = {
	-50.0,-33.0,-25.0,-10.0,-3.0,-30.0,-50.0,-33.0
}; //(AREA) New Area
new Float:zones_points_1[] = {
	37.0,-29.0,63.0,-10.0,88.0,-27.0,37.0,-29.0
}; //(AREA) New Area1
new Float:zones_points_2[] = {
	-10.0,-69.0,46.0,-68.0,8.0,-88.0,-10.0,-69.0
}; //(AREA) New Area

new zones[ 3 ];
public OnGameModeInit(){
	zones[ 0 ] = CreatePolygon( zones_points_0 );
	zones[ 1 ] = CreatePolygon( zones_points_1 );
	zones[ 2 ] = CreatePolygon( zones_points_2 );
	return true;
}

public OnGameModeExit(){
	return true;
}

public OnPlayerConnect(playerid){
	return true;
}

public OnPlayerDisconnect(playerid, reason){
	return true;
}

public OnPlayerSpawn(playerid){
	PolygonShowForPlayer(playerid, zones[ 0 ]);
	PolygonShowForPlayer(playerid, zones[ 1 ]);
	PolygonShowForPlayer(playerid, zones[ 2 ]);
	return true;
}

public OnPlayerEnterPolygon( playerid, polygonid ){
	PolygonFlashForPlayer( playerid, polygonid );
	return true;
}

public OnPlayerLeavePolygon( playerid, polygonid ){
	PolygonStopFlashForPlayer( playerid, polygonid );
	return true;
}
