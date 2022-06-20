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
	local bID = LibraryData.getIDState("item_attachment", nodeRecord);
	local bSectionNonID = false;
	local bSectionModifiers = false;
  if updateControl("nonid_name", bReadOnly, bID) then bSectionNonID = true; end
  if updateControl("nonidentified", bReadOnly, bID) then bSectionNonID = true; end
  updateControl("equipment_type", bReadOnly, bID);
  updateControl("use_with", bReadOnly, bID);
  if updateControl("modifiers", bReadOnly, bID) then bSectionModifiers = true; end
	if updateControl("modification_options", bReadOnly, bID) then bSectionModifiers = true; end
  updateControl("hardpoints_required", bReadOnly, bID);
  updateControl("cost", bReadOnly, bID);
  updateControl("encumbrance", bReadOnly, bID);
  updateControl("rarity", bReadOnly, bID);
  updateControl("description", bReadOnly, bID);
	if User.getRulesetName() == "StarWarsFFG" then
		setting.setVisible(false);
		setting_label.setVisible(false);
	else
		updateControl("setting", bReadOnly, bID);
	end
	updateControl("source", bReadOnly, bID);
	divider.setVisible(bSectionNonID);
	divider_modifiers1.setVisible(bSectionModifiers);
	divider_modifiers2.setVisible(bSectionModifiers);
end
