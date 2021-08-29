--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

function onInit()
	OptionsManager.addOptionValue("DDCL", "option_val_DDCL_sw_core", "desktopdecal_sw_core", true);
	OptionsManager.setOptionDefault("DDCL", "desktopdecal_sw_core");
	-- Allow Gear to have attachments
	OptionsManager.registerOption2("GATT", false, "option_header_sw_house", "option_label_GATT", "option_entry_cycler",
		{ labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "on" });
end
