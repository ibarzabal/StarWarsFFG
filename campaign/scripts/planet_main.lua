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
	local bID = true;
	local bDivSource = false;
  local bAstronavData = false;
  local bOrbitalData = false;
	local bOtherData = false;

--	if User.getRulesetName() == "StarWarsFFG" then
--		setting.setVisible(false);
--		setting_label.setVisible(false);
--	else
--	  updateControl("setting", bReadOnly, bID);
--	end
	if updateControl("system", bReadOnly, bID) then bAstronavData = true; end;
	if updateControl("sector", bReadOnly, bID) then bAstronavData = true; end;
	if updateControl("region", bReadOnly, bID) then bAstronavData = true; end;
  astronavigation_data_header.setVisible(bAstronavData);

  if updateControl("year", bReadOnly, bID) then bOrbitalData = true; end;
	if updateControl("day", bReadOnly, bID) then bOrbitalData = true; end;
  orbital_metrics_header.setVisible(bOrbitalData);

	if updateControl("government", bReadOnly, bID) then bOtherData = true; end;
	if updateControl("population", bReadOnly, bID) then bOtherData = true; end;
	if updateControl("languages", bReadOnly, bID) then bOtherData = true; end;
	if updateControl("terrain", bReadOnly, bID) then bOtherData = true; end;
	if updateControl("major_cities", bReadOnly, bID) then bOtherData = true; end;
	if updateControl("areas_of_interest", bReadOnly, bID) then bOtherData = true; end;
	if updateControl("major_exports", bReadOnly, bID) then bOtherData = true; end;
	if updateControl("major_imports", bReadOnly, bID) then bOtherData = true; end;
	if updateControl("trade_routes", bReadOnly, bID) then bOtherData = true; end;
	if updateControl("special_conditions", bReadOnly, bID) then bOtherData = true; end;
	other_header.setVisible(bOtherData);

	if updateControl("source", bReadOnly, bID) then bDivSource = true; end;
	divider_source.setVisible(bDivSource);

end
