aRecordOverrides = {
	-- New record types
	["talent"] = {
		bExport = true,
		aDataMap = { "talent", "reference.talents" },
		aDisplayIcon = { "button_talents", "button_talents_down" },
		sRecordDisplayClass = "referencetalent",
		aGMListButtons = { "button_talent_type" };
		aPlayerListButtons = { "button_talent_type" };
		aCustomFilters = {
			["Activation"] = { sField = "activation" },
			["Ranked"] = { sField = "ranked" },
			["Setting"] = { sField = "setting" }
		},
	},
};






function onInit()
	for kRecordType,vRecordType in pairs(aRecordOverrides) do
		LibraryData.overrideRecordTypeInfo(kRecordType, vRecordType);
	end
end
