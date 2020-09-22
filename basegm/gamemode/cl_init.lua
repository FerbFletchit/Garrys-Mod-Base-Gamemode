function IncludePlugins(dir)
	MsgN("Starting to include CL Plugins!");
	local fil, Folders = file.Find(dir.."*", "LUA")
	MsgN("Total: ", table.Count(Folders));
	
	for k,v in pairs(Folders)do
		if(v != "." and v != "..")then
			local Files = file.Find(dir..v.."/*.lua", "LUA");
			
			for q,w in pairs(Files) do
				include("plugins/"..v.."/"..w)
			end
		end
	end
end

include( 'shared.lua' )

for _, file in pairs(file.Find(Config.GM.."/gamemode/client/*.lua", "LUA")) do
	include(Config.GM.."/gamemode/client/"..file)
end

IncludePlugins(Config.GM.."/gamemode/plugins/")