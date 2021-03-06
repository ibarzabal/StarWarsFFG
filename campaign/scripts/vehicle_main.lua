--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

function onInit()
	update();
end

function VisDataCleared()
	update();
end

function InvisDataAdded()
	update();
end

function updateControl(sControl, bReadOnly, bID)
	if not self[sControl] then
		return false;
	end

	if not bID then
		return self[sControl].update(bReadOnly, true);
	end

	return self[sControl].update(bReadOnly);
end

function update()

	local nodeRecord = getDatabaseNode();
	local bReadOnly = WindowManager.getReadOnlyState(nodeRecord);
	local bID = true; --LibraryData.getIDState("item_attachment", nodeRecord);
	updateControl("type", bReadOnly, bID);
	updateControl("model", bReadOnly, bID);
	updateControl("manufacturer", bReadOnly, bID);
	updateControl("maximum_altitude", bReadOnly, bID);
	updateControl("hyperdrive", bReadOnly, bID);
	updateControl("navicomputer", bReadOnly, bID);
	updateControl("sensor_range", bReadOnly, bID);
	updateControl("control_skill", bReadOnly, bID);
	updateControl("compliment", bReadOnly, bID);
	updateControl("starfighter_complement", bReadOnly, bID);
	updateControl("vehicle_complement", bReadOnly, bID);
	updateControl("passenger_capacity", bReadOnly, bID);
	updateControl("encumbrance_moreinfo", bReadOnly, bID);
	updateControl("cost", bReadOnly, bID);
	updateControl("rarity", bReadOnly, bID);
	updateControl("encumbrance_capacity", bReadOnly, bID);
	updateControl("encumbrance_capacity_notes", bReadOnly, bID);
	updateControl("consumables", bReadOnly, bID);
	updateControl("hard_points", bReadOnly, bID);
	updateControl("description", bReadOnly, bID);
	--updateControl("additional_rules", bReadOnly, bID);
	updateControl("source", bReadOnly, bID);
  main_statblock1_silhouette.setReadOnly(bReadOnly);
	main_statblock1_speed.setReadOnly(bReadOnly);
	main_statblock1_handling.setReadOnly(bReadOnly);
	vehicle_armor.setReadOnly(bReadOnly);
	hull_trauma_threshold.setReadOnly(bReadOnly);
	hull_trauma_current.setReadOnly(bReadOnly);
	system_strain_threshold.setReadOnly(bReadOnly);
	system_strain_current.setReadOnly(bReadOnly);
	vehicle_defense_fore.setReadOnly(bReadOnly);
	vehicle_defense_port.setReadOnly(bReadOnly);
	vehicle_defense_starboard.setReadOnly(bReadOnly);
	vehicle_defense_aft.setReadOnly(bReadOnly);

	if bReadOnly then
		attachments_iedit.setVisible(false);
		attachments_iadd.setVisible(false);
		weapons_iedit.setVisible(false);
		weapons_iadd.setVisible(false);
		button_attachments.setVisible(false);
		button_items.setVisible(false);
		defense_fore_disabled.setVisible(false);
		defense_port_disabled.setVisible(false);
		defense_starboard_disabled.setVisible(false);
		defense_aft_disabled.setVisible(false);
		if critical_damage_iedit then
			critical_damage_iedit.setVisible(false);
			critical_damage_iadd.setVisible(false);
		end
	else
		attachments_iedit.setVisible(true);
		attachments_iadd.setVisible(true);
		weapons_iadd.setVisible(true);
		weapons_iedit.setVisible(true);
		button_attachments.setVisible(true);
		button_items.setVisible(true);
		defense_fore_disabled.setVisible(true);
		defense_port_disabled.setVisible(true);
		defense_starboard_disabled.setVisible(true);
		defense_aft_disabled.setVisible(true);
		if critical_damage_iedit then
			critical_damage_iedit.setVisible(true);
			critical_damage_iadd.setVisible(true);
		end
	end

	vehicle_defense_fore_dash.setVisible(defense_fore_disabled.getValue() == 1);
	vehicle_defense_port_dash.setVisible(defense_port_disabled.getValue() == 1);
	vehicle_defense_starboard_dash.setVisible(defense_starboard_disabled.getValue() == 1);
	vehicle_defense_aft_dash.setVisible(defense_aft_disabled.getValue() == 1);

	vehicle_defense_fore.setVisible(defense_fore_disabled.getValue() == 0);
	vehicle_defense_port.setVisible(defense_port_disabled.getValue() == 0);
	vehicle_defense_starboard.setVisible(defense_starboard_disabled.getValue() == 0);
	vehicle_defense_aft.setVisible(defense_aft_disabled.getValue() == 0);

--	if OptionsManager.isOption("VHPT", "off") then
--		hard_points_label.setVisible(false);
--		hard_points.setVisible(false);
--	end

--	if OptionsManager.isOption("VATT", "off") then
--		attachments_iedit.setVisible(false);
--		attachments_header.setVisible(false);
--		attachments_iadd.setVisible(false);
--		attachments.setVisible(false);
--	end
end


function updateDefense()
	if User.isHost() or getDatabaseNode().isOwner() then
		if defense_fore_disabled.getValue() == 1 then
			vehicle_defense_fore.setValue(0);
		end
		if defense_port_disabled.getValue() == 1 then
			vehicle_defense_port.setValue(0);
		end
		if defense_starboard_disabled.getValue() == 1 then
			vehicle_defense_starboard.setValue(0);
		end
		if defense_aft_disabled.getValue() == 1 then
			vehicle_defense_aft.setValue(0);
		end
	end
	update();
end


function onDrop(x, y, draginfo)
	local sType; --type.getValue();
--	local bWeapon = (sType == "Weapon");
--	local bArmor = (sType == "Armor");
	if draginfo.isType("shortcut") then
		local sClass, sRecord = draginfo.getShortcutData();
		if StringManager.contains({"reference_item_attachment"}, sClass) then
			if User.isHost() or getDatabaseNode().isOwner() then
				sType = "vehicle"; --type.getValue();
				addAttachment(getDatabaseNode(), sClass, sRecord, sType);
			end
			return true;
		end

		if StringManager.contains({"item"}, sClass) then
			if User.isHost() or getDatabaseNode().isOwner() then
				addWeapon(getDatabaseNode(), sClass, sRecord);
			end
			return true;
		end



	end
	-- return CharManager.onDrop(getDatabaseNode(), x, y, draginfo);
end




function addAttachment(nodeItem, sClass, sRecord, sType)
	local attachment_desc = DB.getValue(nodeSource, "name", "");
	local sFormat = Interface.getString("char_message_attachmentadd");
	local sMsg = string.format(sFormat, attachment_desc, DB.getValue(nodeItem, "name", ""));
	local recordnode = DB.findNode(sRecord);
	local AttachmentType = DB.getValue(recordnode,"equipment_type","");
	local newitemnode;

	if sType:lower() == AttachmentType:lower() then
		-- get the new item attachment
		newitemnode = nodeItem.createChild("attachments").createChild();
		DBManagerGenesys.copyNode(recordnode, newitemnode);
	else
		ChatManager.SystemMessage(Interface.getString("char_message_attachmentmismatch"));
	end
	return true;
end




function addWeapon(nodeItem, sClass, sRecord)
	local item_desc = DB.getValue(nodeSource, "name", "");
--	local sFormat = Interface.getString("char_message_attachmentadd");
--	local sMsg = string.format(sFormat, item_desc, DB.getValue(nodeItem, "name", ""));
	local recordnode = DB.findNode(sRecord);
	local ItemType = DB.getValue(recordnode,"type","");
	local newitemnode;

	if (ItemType:lower() == "weapon" or ItemType:lower() == "vehicle weapon") then
		-- get the new item attachment
		newitemnode = nodeItem.createChild("weapons").createChild();
		DBManagerGenesys.copyNode(recordnode, newitemnode);
	else
		ChatManager.SystemMessage(Interface.getString("char_message_vehicle_weapon_mismatch"));
	end
	return true;
end
