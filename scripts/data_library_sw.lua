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
	["species_archetype"] = {
		bExport = true,
		aDataMap = { "species_archetype", "reference.species_archetypes" },
		aDisplayIcon = { "button_species_archetypes", "button_species_archetypes_down" },
		sRecordDisplayClass = "referencespecies_archetype",
		sSidebarCategory = "create",
		sIcon = "sidebar_icon_race",
		aCustomFilters = {
			["Source"] = { sField = "source", fGetValue = getRecordSource },
		},
	},
	["career"] = {
		bExport = true,
		aDataMap = { "career", "reference.careers" },
		aDisplayIcon = { "button_careers", "button_careers_down" },
		sRecordDisplayClass = "referencecareer",
		aCustomFilters = {
			["Source"] = { sField = "source", fGetValue = getRecordSource },
		},
	},
	["skill"] = {
		bExport = true,
		aDataMap = { "skill", "reference.skills" },
		aDisplayIcon = { "button_skills", "button_skills_down" },
		sRecordDisplayClass = "referenceskill",
		aCustomFilters = {
			["Category"] = { sField = "category" },
			["Characteristic"] = { sField = "characteristic" },
			["Source"] = { sField = "source", fGetValue = getRecordSource },
		},
	},
	["npc"] = {
		bExport = true,
		bID = true,
		aDataMap = { "npc", "reference.npcdata" },
--		aGMListButtons = { "button_npc_letter", "button_npc_type" };
		aCustomFilters = {
			["Category"] = { sField = "npc_category", sType = "string"},
			["Type"] = { sField = "type", sType = "string"},
			["Source"] = { sField = "source", fGetValue = getRecordSource },
		},
	},
	["item"] = {
		bExport = true,
		bID = true,
		fIsIdentifiable = isItemIdentifiable,
		aDataMap = { "item", "reference.equipment", "reference.weapon", "reference.armor", "reference.magicitems", "reference.gear" },
		fRecordDisplayClass = getItemRecordDisplayClass,
		aRecordDisplayClasses = { "item", "referencearmor", "referenceweapon", "referenceequipment", "referencegear" },
		aGMListButtons = { "button_item_armor", "button_item_weapons", "button_item_gear", "button_item_vehicle_weapons" };
		aPlayerListButtons = { "button_item_armor", "button_item_weapons", "button_item_gear", "button_item_vehicle_weapons" };

		aCustomFilters = {
			["Source"] = { sField = "source", fGetValue = getRecordSource },
			["Skill"] = { sField = "skill" },
			["Type"] = { sField = "type" },
			["Subtype"] = { sField = "subtype" },
		},
	},
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
			["Force Talent"] = { sField = "force_talent" },
			["Source"] = { sField = "source", fGetValue = getRecordSource },
		},
	},
	["item_attachment"] = {
		bExport = true,
		fIsIdentifiable = isItemIdentifiable,
		aDataMap = { "item_attachment", "reference.item_attachment_armor", "reference.item_attachment_weapon"},
		aDisplayIcon = { "button_item_attachments", "button_item_attachments_down" },
		sRecordDisplayClass = "reference_item_attachment",
		aCustomFilters = {
			["Source"] = { sField = "source", fGetValue = getRecordSource },
			["Equipment Type"] = { sField = "equipment_type", sType = "string"},
		},
	},


	["special_ability"] = {
		bExport = true,
		aDataMap = { "special_ability", "reference.special_abilities" },
		aDisplayIcon = { "button_special_abilities", "button_special_abilities_down" },
		sRecordDisplayClass = "referenceracialtrait",
		sSidebarCategory = "create",
		aCustomFilters = {
			["Source"] = { sField = "source", fGetValue = getRecordSource },
		},
	},

	["vehicle"] = {
		bExport = true,
		aDataMap = { "vehicle", "reference.vehicles" },
		aDisplayIcon = { "button_vehicles", "button_vehicles_down" },
		-- sRecordDisplayClass = "vehicle",
		aGMListButtons = { "button_vehicle_type" };
		aCustomFilters = {
			["Type"] = { sField = "type" },
			["Model"] = { sField = "model" },
			["Source"] = { sField = "source", fGetValue = getRecordSource },
		},
	},

	["specialization"] = {
		bExport = true,
		aDataMap = { "specialization", "reference.specializations" },
		aDisplayIcon = { "button_specializations", "button_specializations_down" },
		sRecordDisplayClass = "referencespecialization",
		sSidebarCategory = "create",
		aCustomFilters = {
			["Career"] = { sField = "career", sType = "string"},
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
	LibraryData.overrideRecordTypes(aRecordOverrides);
end
