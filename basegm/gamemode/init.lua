AddCSLuaFile( "cl_init.lua" )
include( "shared.lua" )
include( "resources.lua" )
AddCSLuaFile( "shared.lua" )

MsgN("_-_-_-_- Server Files -_-_-_-_")
MsgN("Loading Server Files")
for _, file in pairs (file.Find(Config.GM.."/gamemode/server/*.lua", "LUA")) do
   MsgN("-> "..file)
   include(Config.GM.."/gamemode/server/"..file) 
end

MsgN("_-_-_-_- Shared Files -_-_-_-_")
for _, file in pairs (file.Find(Config.GM.."/gamemode/shared/*.lua", "LUA")) do
   MsgN("-> "..file)
   AddCSLuaFile(Config.GM.."/gamemode/shared/"..file)
end

MsgN("_-_-_-_- Client Files -_-_-_-_")
for _, file in pairs (file.Find(Config.GM.."/gamemode/client/*.lua", "LUA")) do
   MsgN("-> "..file)
   AddCSLuaFile(Config.GM.."/gamemode/client/"..file)
end

function GM:Initialize()   

end

include("plugins.lua")