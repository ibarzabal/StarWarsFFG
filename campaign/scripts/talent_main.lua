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
	local bID = true; --LibraryData.getIDState("talent", nodeRecord);
	local sRanked = ranked.getValue();
	updateControl("name", bReadOnly, bID);
--	updateControl("tier", bReadOnly, bID);
	updateControl("activation", bReadOnly, bID);
	updateControl("ranked", bReadOnly, bID);
	updateControl("ranks", bReadOnly, bID);
	updateControl("description", bReadOnly, bID);
  updateControl("trees", bReadOnly, bID);
	updateControl("summary", bReadOnly, bID);
	updateControl("setting", bReadOnly, bID);
	if sRanked:lower() == "yes" then
		ranks.setVisible(true);
	else
		ranks.setValue(0);
		ranks.setVisible(false);
	end




end
