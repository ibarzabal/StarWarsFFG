function onInit()
	-- registerPublicNodes
	if User.isHost() then
		DB.createNode("StoryPointPCchit").setPublic(true);
		DB.createNode("StoryPointGMchit").setPublic(true);
	end
end
