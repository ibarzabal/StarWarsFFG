function onInit()
	-- registerPublicNodes
	if User.isHost() then
		DB.createNode("StoryPointPCchit").setPublic(true);
		DB.createNode("StoryPointGMchit").setPublic(true);
		ChatManager.registerSlashCommand("export_nodesc", DBManagerGenesys.BackupDescriptionAndExport);
		PartyVehicleManager.buildPartySharedVehicles();
	end
end
