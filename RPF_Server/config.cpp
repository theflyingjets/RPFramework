class CfgPatches
{
	class RPF_Server
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
	};
};

class CfgFunctions 
{
	class Server
	{
		class Save
		{
			file = "RPF_Server\Functions\core\Save";
			class handleDisconnect {};
            class initStats {};
            class statSave {};
            class statSaveLoop {};
		};
		class Garage
		{
			file = "RPF_Server\Functions\core\Garage";
			class fetchGarage {};
            class insertGarage {};
            class removeGarage {};
		};
		class Money
		{
			file = "RPF_Server\Functions\core\Money";
			class replicateMoney {};
		};
	};
	class ExternalS
	{
		class ExtDB
		{
			file = "RPF_Server\External\ExtDB";
			class ExtDBasync {};
            class ExtDBinit {};
			class ExtDBstrip {};
			class ExtDBquery {};
		};
	};
	class ServerModules
	{
		class Config
		{
			file = "RPF_Server\Functions\modules\CONFIG";
			class initModules {};
		};
		#include "Functions\modules\CONFIG\moduleFunctions.hpp"
	};
};