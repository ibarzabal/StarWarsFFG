--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

function onInit()
	OptionsManager.addOptionValue("DDCL", "option_val_DDCL_sw_core", "desktopdecal_sw_core", true);
	OptionsManager.setOptionDefault("DDCL", "desktopdecal_sw_core");

	OptionsManager.registerOption2("interface_cleardicepoolondrag", true, "option_header_game", "interface_cleardicepoolondrag_label", "option_entry_cycler" ,
			{ labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "on" });

	OptionsManager.registerOption2("PSMN", false, "option_header_game", "option_label_PSMN", "option_entry_cycler",
			{ labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "on" });

	OptionsManager.registerOption2("PSDP", false, "option_header_game", "option_label_PSDP", "option_entry_cycler",
			{ labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "on" });

	-- Allow Gear to have attachments
	OptionsManager.registerOption2("GATT", false, "option_header_sw_house", "option_label_GATT", "option_entry_cycler",
		{ labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "on" });
end
