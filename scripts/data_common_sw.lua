--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--
--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

-- function isPFRPG()
-- 	return false;
-- end


-- Characteristics (database names)
characteristics = {
	"brawn",
	"agility",
	"intellect",
	"cunning",
	"willpower",
	"presence"
};

characteristics_ltos = {
	["brawn"] = "BR",
	["agility"] = "AG",
	["intellect"] = "IN",
	["cunning"] = "CU",
	["willpower"] = "WI",
	["presence"] = "PR"
};

characteristics_stol = {
	["BR"] = "brawn",
	["AG"] = "agility",
	["IN"] = "intellect",
	["CU"] = "cunning",
	["WI"] = "willpower",
	["PR"] = "presence"
};

	-- This is used by the ruleset to choose which skills to filter and show in the character sheet
	genesys_settings = {
			["Terrinoth"] = {
					shortname = "TERRINOTH" ,
					description = "<p>Terrinoth is a Fantasy Setting.</p>"
				},
			["Android - Shadow of the Beanstalk"] = {
					shortname = "ANDROID",
					description = "<p>Android is a Cyberpunk Setting.</p>"
				},
			["Generic Setting"] = {
				shortname = "GENERIC",
				description = "<p>This is a generic setting...</p>"
			}
	};




skilldata = {
-- GENERAL SKILLS
["Astrogation"] = {
		characteristic = "IN",
		description = "<p>The Astrogation skill represents a character's ability to use his knowledge of the galaxy to most efficiently program the hyperspace coordinates for any jump.</p>"
	},
["Athletics"] = {
		characteristic = "BR"
	},
["Charm"] = {
		characteristic = "PR"
	},
["Coercion"] = {
		characteristic = "WI"
	},
["Computers"] = {
		characteristic = "IN"
	},
["Cool"] = {
		characteristic = "PR"
	},
["Coordination"] = {
		characteristic = "AG",
		description = "<p></p>"
	},
["Deception"] = {
		characteristic = "CU",
		description = "<p></p>"
	},
["Discipline"] = {
		characteristic = "WI",
		description = "<p></p>"
	},
["Leadership"] = {
		characteristic = "PR",
		description = "<p></p>"
	},
["Mechanics"] = {
		characteristic = "IN",
		description = "<p></p>"
	},
["Medicine"] = {
		characteristic = "IN",
		description = "<p></p>"
	},
["Negotiation"] = {
		characteristic = "PR",
		description = "<p></p>"
	},
["Perception"] = {
		characteristic = "CU",
		description = "<p></p>"
	},
["Piloting (Planetary)"] = {
		characteristic = "AG",
		description = "<p></p>"
	},
["Piloting (Space)"] = {
		characteristic = "AG",
		description = "<p></p>"
	},
["Resilience"] = {
		characteristic = "BR",
		description = "<p></p>"
	},
["Skulduggery"] = {
		characteristic = "CU",
		description = "<p></p>"
	},
["Stealth"] = {
		characteristic = "AG",
		description = "<p></p>"
	},
["Streetwise"] = {
		characteristic = "CU",
		description = "<p></p>"
	},
["Survival"] = {
		characteristic = "CU",
		description = "<p></p>"
	},
["Vigilance"] = {
		characteristic = "WI",
		description = "<p></p>"
	},
-- COMBAT SKILLS
["Brawl"] = {
		characteristic = "BR",
		description = "<p>Unarmed combat is governed by the Brawl skill and deals damage equal to the character's Brawn characteristic.</p>",
		advanced = 1,
	},
["Melee"] = {
		characteristic = "BR",
		description = "<p>The training to use weapons to deadly effect while engaged with an enemy makes up the Melee skill. Uses Brawn characteristic.</p>",
		advanced = 1,
	},
["Ranged (Heavy)"] = {
		characteristic = "AG",
		description = "<p>Ranged weapons requiring two hands to wield or aim, including blaster rifles and large thrown weapons such as spears and throwing axes, rely on this skill.</p>",
		advanced = 1,
	},
["Ranged (Light)"] = {
		characteristic = "AG",
		description = "<p>Ranged weapons requiring one hand to wield or aim, including blaster pistols and small thrown weapons such as grenades, rely on this skill.</p>",
		advanced = 1,
	},
["Gunnery"] = {
		characteristic = "AG",
		description = "<p>This skill covers heavy mounted weapons as well as starship weapons. These weapons are too heavy to carry.</p>",
		advanced = 1,
	},
-- KNOWLEDGE SKILLS
["Knowledge (Core Worlds)"] = {
		characteristic = "IN",
		description = "<p>Knowledge of the culture, planets and systems of the Core Worlds.</p>",
		knowledge = 1,
	},
["Knowledge (Education)"] = {
		characteristic = "IN",
		description = "<p>Indication of the general level of the character's education.  Reading, mathmatics, basic sciences and engineering, etc..</p>",
	},
["Knowledge (Lore)"] = {
		characteristic = "IN",
		description = "<p>Deciphering ancient script and knowledge of ancient legends.</p>",
	},
["Knowledge (Outer Rim)"] = {
		characteristic = "IN",
		description = "<p>Knowledge of the culture, planets and systems of the Outer Rim</p>",
	},
["Knowledge (Underworld)"] = {
		characteristic = "IN",
		description = "<p>Knowledge of illegal activities and the criminal hotspot lcoations.</p>",
	},
["Knowledge (Xenology)"] = {
		characteristic = "IN",
		description = "<p>Knowledge of the different alien species; including culture, habits and physical traits.</p>",
	},



-- FORCE AND DESTINY
["Lightsaber"] = {
		characteristic = "BR",
		description = "<p>Weapon Skill from Force and Destiny(tm).</p>",
	},
	-- AGE OF REBELLION
	["Warfare"] = {
		characteristic = "IN",
		description = "<p>Knowledge skill from Age of Rebellion(tm).</p>",
	}
};




critical_injury_result_data = {
	["Minor Nick"] = {
			d100_start = 1,
			d100_end = 5,
			name = "Minor Nick (1)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 1,
		},
	["Slowed Down"] = {
			d100_start = 6,
			d100_end = 10,
			name = "Slowed Down (1)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 1,
		},
	["Sudden Jolt"] = {
			d100_start = 11,
			d100_end = 15,
			name = "Sudden Jolt (1)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 1,
		},
	["Distracted"] = {
			d100_start = 16,
			d100_end = 20,
			name = "Distracted (1)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 1,
		},
	["Off-Balance"] = {
			d100_start = 21,
			d100_end = 25,
			name = "Off-Balance (1)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 1,
		},
	["Discouraging Wound"] = {
			d100_start = 26,
			d100_end = 30,
			name = "Discouraging Wound (1)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 1,
		},
	["Stunned"] = {
			d100_start = 31,
			d100_end = 35,
			name = "Stunned (1)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 1,
		},
	["Stinger"] = {
			d100_start = 36,
			d100_end = 40,
			name = "Stinger (1)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 1,
		},
	["Bowled Over"] = {
			d100_start = 41,
			d100_end = 45,
			name = "Bowled Over (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["Head Ringer"] = {
			d100_start = 46,
			d100_end = 50,
			name = "Head Ringer (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["Fearsome Wound"] = {
			d100_start = 51,
			d100_end = 55,
			name = "Fearsome Wound (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["Agonizing Wound"] = {
			d100_start = 56,
			d100_end = 60,
			name = "Agonizing Wound (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["Slightly Dazed"] = {
			d100_start = 61,
			d100_end = 65,
			name = "Slightly Dazed (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["Scattered Senses"] = {
			d100_start = 66,
			d100_end = 70,
			name = "Scattered Senses (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["Hamstrung"] = {
			d100_start = 71,
			d100_end = 75,
			name = "Hamstrung (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["Overpowered"] = {
			d100_start = 76,
			d100_end = 80,
			name = "Overpowered (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["Winded"] = {
			d100_start = 81,
			d100_end = 85,
			name = "Winded (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["Compromised"] = {
			d100_start = 86,
			d100_end = 90,
			name = "Compromised (2)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 2,
		},
	["At the Brink"] = {
			d100_start = 91,
			d100_end = 95,
			name = "At the Brink (3)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 3,
		},
	["Crippled"] = {
			d100_start = 96,
			d100_end = 100,
			name = "Crippled (3)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 3,
		},
	["Maimed"] = {
			d100_start = 101,
			d100_end = 105,
			name = "Maimed (3)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 3,
		},
	["Horrific Injury"] = {
			d100_start = 106,
			d100_end = 110,
			name = "Horrific Injury (3)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 3,
		},
	["Temporarily Lame"] = {
			d100_start = 111,
			d100_end = 115,
			name = "Temporarily Lame (3)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 3,
		},
	["Blinded"] = {
			d100_start = 116,
			d100_end = 120,
			name = "Blinded (3)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 3,
		},
	["Knocked Senseless"] = {
			d100_start = 121,
			d100_end = 125,
			name = "Knocked Senseless (3)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 3,
		},
	["Gruesome Injury"] = {
			d100_start = 126,
			d100_end = 130,
			name = "Gruesome Injury (4)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 4,
		},
	["Bleeding Out"] = {
			d100_start = 131,
			d100_end = 140,
			name = "Bleeding Out (4)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 4,
		},
	["The End is Nigh"] = {
			d100_start = 141,
			d100_end = 150,
			name = "The End is Nigh (4)",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 4,
		},
	["Dead"] = {
			d100_start = 151,
			d100_end = 9999,
			name = "Dead",
			description = "<p>See page 217 Edge of the Empire(tm) or page 231 Age of Rebellion(tm).</p>",
			severity = 999,
		}
};