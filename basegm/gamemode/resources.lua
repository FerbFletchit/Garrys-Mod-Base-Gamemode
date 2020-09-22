function AddDir(dir)

	local files, dirs = file.Find(dir.."/*", "GAME")
	
	for _, fdir in pairs(dirs) do
		if fdir != ".svn" then
		AddDir(dir.."/"..fdir)
		end
	end
	 
	for k,v in pairs(files) do
		resource.AddFile(dir.."/"..v)
	end
 
end
AddDir("materials/assets")
AddDir("resource/fonts")