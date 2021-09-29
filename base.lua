function onInit()
	GameSystem.actions["dicegen"] = { bUseModStack = true };
	-- registerPublicNodes
	if User.isHost() then
		DB.createNode("StoryPointPCchit").setPublic(true);
		DB.createNode("StoryPointGMchit").setPublic(true);
	end
end
