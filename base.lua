function onInit()
	-- registerPublicNodes
	if User.isHost() then
		DB.createNode("StoryPointPCchit").setPublic(true);
		DB.createNode("StoryPointGMchit").setPublic(true);
		DB.createNode("StarWarsFFG_Campaign").setPublic(false);
	end
end
