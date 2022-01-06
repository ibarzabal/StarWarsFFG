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
			["Source"] = { sField = "source" }
		},
	},
};

function onInit()
	LibraryData.setCustomFilterHandler("item_isidentified", getItemIsIdentified);
	for kRecordType,vRecordType in pairs(aRecordOverrides) do
		LibraryData.overrideRecordTypeInfo(kRecordType, vRecordType);
	end
	if ActionsManager.isClientFGU() == false then
		for kDefSidebar,vDefSidebar in pairs(aDefaultSidebarState) do
			DesktopManager.setDefaultSidebarState(kDefSidebar, vDefSidebar);
		end
		for kRecordType,vRecordListViews in pairs(aListViews) do
			for kListView, vListView in pairs(vRecordListViews) do
				LibraryData.setListView(kRecordType, kListView, vListView);
			end
		end
	end
	LibraryData.setRecordTypeInfo("setting", nil);
end
