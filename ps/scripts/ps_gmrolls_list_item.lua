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
		wtmod.setLink(nodeChar.createChild("wounds.threshold_modifier", "number"));
    stmod.setLink(nodeChar.createChild("strain.threshold_modifier", "number"));

	end
end
