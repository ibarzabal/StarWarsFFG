function getRecordSource(vNode)
	local v = StringManager.trim(DB.getValue(vNode, "source", ""));
	local sType = v:match("^[^(]+");
	if sType then
		v = StringManager.trim(sType);
	end
	v = StringManager.capitalize(v);
	return v;
end


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
			["Source"] = { sField = "source", fGetValue = getRecordSource },
		},
	},
};

function onInit()
--	LibraryData.setCustomFilterHandler("item_isidentified", getItemIsIdentified);
--	if ActionsManager.isClientFGU() == true then
--		LibraryData.overrideRecordTypes(aRecordOverrides);
--		LibraryData.setRecordViews(aListViews);
--	else
--		for kRecordType,vRecordType in pairs(aRecordOverrides) do
--			LibraryData.overrideRecordTypeInfo(kRecordType, vRecordType);
--		end
--		for kDefSidebar,vDefSidebar in pairs(aDefaultSidebarState) do
--			DesktopManager.setDefaultSidebarState(kDefSidebar, vDefSidebar);
--		end
--		for kRecordType,vRecordListViews in pairs(aListViews) do
--			for kListView, vListView in pairs(vRecordListViews) do
--				LibraryData.setListView(kRecordType, kListView, vListView);
--			end
--		end
--	end
	LibraryData.setRecordTypeInfo("setting", nil);
end
