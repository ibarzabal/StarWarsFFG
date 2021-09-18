--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

function onInit()
	-- Set up the Editable PC links
	onLinkChanged();
end

--function linkToken()
--	local imageinstance = token.populateFromImageNode(tokenrefnode.getValue(), tokenrefid.getValue());
--	if imageinstance then
--		TokenManager.linkToken(getDatabaseNode(), imageinstance);
--	end
--end

function onLinkChanged()
	local sClass, sRecord = link.getValue();
		linkPCFields();
end

function linkPCFields()
	local nodeChar = link.getTargetDatabaseNode();
	if nodeChar then
    --PartyManager.linkRecordField(nodeChar, nodePS, "brawn.modifier", "number", "brawnmod");
  --	nodePS.brawnmod.setLink(nodeChar.createChild("brawn.modifier", "number"));
    brawnmod.setLink(nodeChar.createChild("brawn.modifier", "number"));
    agilitymod.setLink(nodeChar.createChild("agility.modifier", "number"));
    intellectmod.setLink(nodeChar.createChild("intellect.modifier", "number"));
    cunningmod.setLink(nodeChar.createChild("cunning.modifier", "number"));
    willpowermod.setLink(nodeChar.createChild("willpower.modifier", "number"));
    presencemod.setLink(nodeChar.createChild("presence.modifier", "number"));


		wtmod.setLink(nodeChar.createChild("wounds.threshold_modifier", "number"));
    stmod.setLink(nodeChar.createChild("strain.threshold_modifier", "number"));

		obligationtotal_main.setLink(nodeChar.createChild("obligation_total", "number"));
		dutytotal_main.setLink(nodeChar.createChild("duty_total", "number"));
		moralitytotal_main.setLink(nodeChar.createChild("morality_total", "number"));
	end
end
