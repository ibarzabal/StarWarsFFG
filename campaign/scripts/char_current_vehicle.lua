--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

function onInit()
	onLinkChanged();
end


function onClose()
	local node = getDatabaseNode();
	local current_vehicle, current_vehicle_node = DBManagerGenesys.ActorVehicle(node);
	DB.removeHandler(DB.getPath(current_vehicle_node) .. ".*", "onChildAdded", onListsUpdated);
	DB.removeHandler(DB.getPath(current_vehicle_node) .. ".*", "onChildDeleted", onListsUpdated);
	DB.removeHandler(DB.getPath(current_vehicle_node) .. ".*", "onChildUpdate", onListsUpdated);
end

function onListsUpdated()
	local node = getDatabaseNode();
	local current_vehicle, current_vehicle_node = DBManagerGenesys.ActorVehicle(node);
	if current_vehicle_node and current_vehicle ~=""  then
		linkPCFields(current_vehicle_node);
	end
end

function onLinkChanged()
	local node = getDatabaseNode();
	local current_vehicle, current_vehicle_node = DBManagerGenesys.ActorVehicle(node);

	onClose(); -- If there are handlers from a previous vehicle, remove...
	if current_vehicle_node  and current_vehicle ~="" then
		parentcontrol.window.contents.setVisible(true);
		linkPCFields(current_vehicle_node);
		DB.addHandler(DB.getPath(current_vehicle_node) .. ".*", "onChildAdded", onListsUpdated);
		DB.addHandler(DB.getPath(current_vehicle_node) .. ".*", "onChildDeleted", onListsUpdated);
		DB.addHandler(DB.getPath(current_vehicle_node) .. ".*", "onChildUpdate", onListsUpdated);
	else
		parentcontrol.window.contents.setVisible(false);
	end
end


--function updateControl(sControl, bReadOnly, bID)
--	if not self[sControl] then
--		return false;
--	end
--end

function updateControl(sControl, bReadOnly, bForceHide)
	local bLocalShow;
	if bForceHide then
		bLocalShow = false;
	else
		bLocalShow = true;
		if bReadOnly and not nohide and isEmpty() then
			bLocalShow = false;
		end
	end

	--sControl.setReadOnly(bReadOnly);
	sControl.setVisible(bLocalShow);

	local sLabel = sControl.getName() .. "_label";
	if window[sLabel] then
		window[sLabel].setVisible(bLocalShow);
	end
--	if separator then
--		if window[separator[1]] then
--			window[separator[1]].setVisible(bLocalShow);
--		end
--	end

	--if self.onVisUpdate then
	--	self.onVisUpdate(bLocalShow, bReadOnly);
	--end

	return bLocalShow;
end


function linkPCFields(nodeVehicle)
--	local nodeRecord = getDatabaseNode();
	local bReadOnly = true; -- WindowManager.getReadOnlyState(nodeRecord);
	local bID = true; --LibraryData.getIDState("item_attachment", nodeRecord);

	local current_vehicle_owner_node = nodeVehicle.getParent().getParent();


  main_statblock1_silhouette.setLink(nodeVehicle.createChild("silhouette","number"));
  main_statblock1_speed.setLink(nodeVehicle.createChild("speed.max","number"));
  main_statblock1_handling.setLink(nodeVehicle.createChild("handling","number"));

	defense_fore_disabled.setLink(nodeVehicle.createChild("defense.fore_disabled","number"));
	defense_port_disabled.setLink(nodeVehicle.createChild("defense.port_disabled","number"));
	defense_starboard_disabled.setLink(nodeVehicle.createChild("defense.starboard_disabled","number"));
	defense_aft_disabled.setLink(nodeVehicle.createChild("defense.aft_disabled","number"));

	vehicle_defense_fore.setLink(nodeVehicle.createChild("defense.fore","number"));
	vehicle_defense_port.setLink(nodeVehicle.createChild("defense.port","number"));
	vehicle_defense_starboard.setLink(nodeVehicle.createChild("defense.starboard","number"));
	vehicle_defense_aft.setLink(nodeVehicle.createChild("defense.aft","number"));

	vehicle_armor.setLink(nodeVehicle.createChild("armor","number"));
	hull_trauma_threshold.setLink(nodeVehicle.createChild("hull_trauma.threshold","number"));
	hull_trauma_current_link.setLink(nodeVehicle.createChild("hull_trauma.current","number"));
	system_strain_threshold.setLink(nodeVehicle.createChild("system_strain.threshold","number"));
	system_strain_current_link.setLink(nodeVehicle.createChild("system_strain.current","number"));

	owner.setLink(current_vehicle_owner_node.createChild("name","string"));
	name.setLink(nodeVehicle.createChild("name","string"));
	type.setLink(nodeVehicle.createChild("type","string"));


	manufacturer.setLink(nodeVehicle.createChild("manufacturer","string"));
	maximum_altitude.setLink(nodeVehicle.createChild("maximum_altitude","string"));
	hyperdrive.setLink(nodeVehicle.createChild("hyperdrive","string"));
	navicomputer.setLink(nodeVehicle.createChild("navicomputer","string"));
	sensor_range.setLink(nodeVehicle.createChild("sensor_range","string"));

	control_skill.setLink(nodeVehicle.createChild("control_skill","string"));
	compliment.setLink(nodeVehicle.createChild("compliment","string"));
	starfighter_complement.setLink(nodeVehicle.createChild("starfighter_complement","string"));
	passenger_capacity.setLink(nodeVehicle.createChild("passenger_capacity","string"));
	encumbrance_capacity.setLink(nodeVehicle.createChild("encumbrance_capacity","number"));
	consumables.setLink(nodeVehicle.createChild("consumables","string"));
	hard_points.setLink(nodeVehicle.createChild("hard_points","number"));
	additional_rules.setLink(nodeVehicle.createChild("additional_rules","string"));
	notes.setLink(nodeVehicle.createChild("notes","string"));

	-- need to fix this so i can hide empty fields:
	--updateControl(control_skill, bReadOnly, bID);

	if getDatabaseNode() then
		local temp_node = getDatabaseNode().createChild("temp_vehicle");
		local temp_w_node = temp_node.createChild("weapons");
		local temp_a_node = temp_node.createChild("attachments");
		local temp_c_node = temp_node.createChild("critical_damage");
		local weaponsnode = DB.getChild(nodeVehicle,"weapons");
		local attachmentsnode = DB.getChild(nodeVehicle,"attachments");
		local criticalsnode = DB.getChild(nodeVehicle,"critical_damage");

		if temp_w_node then
			DB.deleteChildren(DB.getPath(temp_w_node));
		end
		if temp_a_node then
			DB.deleteChildren(DB.getPath(temp_a_node));
		end
		if temp_c_node then
			DB.deleteChildren(DB.getPath(temp_c_node));
		end

		if weaponsnode and temp_w_node then
			DBManagerGenesys.copyNode(weaponsnode, temp_w_node);
		end
		if attachmentsnode and temp_a_node then
			DBManagerGenesys.copyNode(attachmentsnode, temp_a_node);
		end
		if criticalsnode and temp_c_node then
			DBManagerGenesys.copyNode(criticalsnode, temp_c_node);
		end
	end
end

function updateVisibilityDefSlots()
	vehicle_defense_fore_dash.setVisible(defense_fore_disabled.getValue() == 1);
	vehicle_defense_port_dash.setVisible(defense_port_disabled.getValue() == 1);
	vehicle_defense_starboard_dash.setVisible(defense_starboard_disabled.getValue() == 1);
	vehicle_defense_aft_dash.setVisible(defense_aft_disabled.getValue() == 1);

	vehicle_defense_fore.setVisible(defense_fore_disabled.getValue() == 0);
	vehicle_defense_port.setVisible(defense_port_disabled.getValue() == 0);
	vehicle_defense_starboard.setVisible(defense_starboard_disabled.getValue() == 0);
	vehicle_defense_aft.setVisible(defense_aft_disabled.getValue() == 0);
end
