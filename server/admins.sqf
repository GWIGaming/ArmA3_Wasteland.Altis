// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: server\admins.sqf

if (!isServer) exitWith {};

if (loadFile (externalConfigFolder + "\admins.sqf") != "") then
{
	call compile preprocessFileLineNumbers (externalConfigFolder + "\admins.sqf");
}
else
{
	// Admin menu (U key) access levels

	/*******************************************************
	 Player UID examples :

		"1234567887654321", // Meatwad
		"8765432112345678", // Master Shake
		"1234876543211234", // Frylock
		"1337133713371337"  // Carl

	 Important: The player UID must always be placed between
	            double quotes (") and all lines need to have
	            a comma (,) except the last one.
	********************************************************/

	// Low Administrators: manage & spectate players, remove hacked vehicles
	lowAdmins = compileFinal str
	[
		"76561198006988496",  // Bloizy
		"76561198054919538",  // Wascom
		"76561197995871657",  // Token
		"76561197970905032",  // Valor
		"76561197996006195",  // ShaggyIrishman
		"76561197981956205",  // Coolbreeze
		"76561198048126542",  // Nervous
		"76561198117454484"   // Balltastic	
	];

	// High Administrators: manage & spectate players, remove hacked vehicles, show player tags
	highAdmins = compileFinal str
	[
		// Put player UIDs here
	];

	// Server Owners: access to everything, including god mode, money, guns, and vehicles
	serverOwners = compileFinal str
	[
		"76561198028609605", // Masin
		"76561197966050928", // Halifax
		"76561198024965005", // Seabase
		"76561197970959439"  // Han Shot First
	];

	/********************************************************/
};

if (typeName lowAdmins == "ARRAY") then { lowAdmins = compileFinal str lowAdmins };
if (typeName highAdmins == "ARRAY") then { highAdmins = compileFinal str highAdmins };
if (typeName serverOwners == "ARRAY") then { serverOwners = compileFinal str serverOwners };

publicVariable "lowAdmins";
publicVariable "highAdmins";
publicVariable "serverOwners";
