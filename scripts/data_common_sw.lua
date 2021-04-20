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
		description = "" , category = "General"
	},
["Athletics"] = {
		characteristic = "BR",
		description = "" , category = "General"
	},
["Charm"] = {
		characteristic = "PR",
		description = "" , category = "General"
	},
["Coercion"] = {
		characteristic = "WI",
		description = "" , category = "General"
	},
["Computers"] = {
		characteristic = "IN",
		description = "" , category = "General"
	},
["Cool"] = {
		characteristic = "PR",
		description = "" , category = "General"
	},
["Coordination"] = {
		characteristic = "AG",
		description = "" , category = "General"
	},
["Deception"] = {
		characteristic = "CU",
		description = "" , category = "General"
	},
["Discipline"] = {
		characteristic = "WI",
		description = "" , category = "General"
	},
["Leadership"] = {
		characteristic = "PR",
		description = "" , category = "General"
	},
["Mechanics"] = {
		characteristic = "IN",
		description = "" , category = "General"
	},
["Medicine"] = {
		characteristic = "IN",
		description = "" , category = "General"
	},
["Negotiation"] = {
		characteristic = "PR",
		description = "" , category = "General"
	},
["Perception"] = {
		characteristic = "CU",
				description = "" , category = "General"
	},
["Piloting (Planetary)"] = {
		characteristic = "AG",
		description = "" , category = "General"
	},
["Piloting (Space)"] = {
		characteristic = "AG",
		description = "" , category = "General"
	},
["Resilience"] = {
		characteristic = "BR",
		description = "" , category = "General"
	},
["Skulduggery"] = {
		characteristic = "CU",
		description = "" , category = "General"
	},
["Stealth"] = {
		characteristic = "AG",
		description = "" , category = "General"
	},
["Streetwise"] = {
		characteristic = "CU",
		description = "" , category = "General"
	},
["Survival"] = {
		characteristic = "CU",
		description = "" , category = "General"
	},
["Vigilance"] = {
		characteristic = "WI",
		description = "" , category = "General"
	},
-- COMBAT SKILLS
["Brawl"] = {
		characteristic = "BR",
		description = "" , category = "Combat"
	},
["Melee"] = {
		characteristic = "BR",
		description = "" , category = "Combat"
	},
["Ranged (Heavy)"] = {
		characteristic = "AG",
		description = "" , category = "Combat"
	},
["Ranged (Light)"] = {
		characteristic = "AG",
		description = "" , category = "Combat"
	},
["Gunnery"] = {
		characteristic = "AG",
		description = "" , category = "Combat"
	},
-- KNOWLEDGE SKILLS
["Knowledge (Core Worlds)"] = {
		characteristic = "IN",
		description = "" , category = "Knowledge"
	},
["Knowledge (Education)"] = {
		characteristic = "IN",
		description = "" , category = "Knowledge"
	},
["Knowledge (Lore)"] = {
		characteristic = "IN",
		description = "" , category = "Knowledge"
	},
["Knowledge (Outer Rim)"] = {
		characteristic = "IN",
		description = "" , category = "Knowledge"
	},
["Knowledge (Underworld)"] = {
		characteristic = "IN",
		description = "" , category = "Knowledge"
	},
["Knowledge (Xenology)"] = {
		characteristic = "IN",
		description = "" , category = "Knowledge"
	},



-- FORCE AND DESTINY
["Lightsaber"] = {
		characteristic = "BR",
		description = "" , category = "Combat"
	},
	-- AGE OF REBELLION
	["Knowledge (Warfare)"] = {
		characteristic = "IN",
		description = "" , category = "Knowledge"
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


	critical_vehicle_result_data = {
		["Mechanical Stress"] = {
				d100_start = 1,
				d100_end = 9,
				name = "Mechanical Stress",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 1,
			},
		["Jostled"] = {
				d100_start = 10,
				d100_end = 18,
				name = "Jostled",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 1,
			},
		["Losing Power to Shields"] = {
				d100_start = 19,
				d100_end = 27,
				name = "Losing Power to Shields",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 1,
			},
		["Knocked Off Course"] = {
				d100_start = 28,
				d100_end = 36,
				name = "Knocked Off Course",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 1,
			},
		["Tailspin"] = {
				d100_start = 37,
				d100_end = 45,
				name = "Tailspin",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 1,
			},
		["Component Hit"] = {
				d100_start = 46,
				d100_end = 54,
				name = "Component Hit (1)",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 1,
			},
		["Failing"] = {
				d100_start = 55,
				d100_end = 63,
				name = "Shields Failing",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 2,
			},
		["Navicomputer Failure"] = {
				d100_start = 64,
				d100_end = 72,
				name = "Navicomputer Failure",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 2,
			},
		["Power Fluctuations"] = {
				d100_start = 73,
				d100_end = 81,
				name = "Power Fluctuations",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 2,
			},
		["Shields Down"] = {
				d100_start = 82,
				d100_end = 90,
				name = "Shields Down",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 3,
			},
		["Engine Damaged"] = {
				d100_start = 91,
				d100_end = 99,
				name = "Engine Damaged",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 3,
			},
		["Shield Overload"] = {
				d100_start = 100,
				d100_end = 108,
				name = "Shield Overload",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 3,
			},
		["Engines Down"] = {
				d100_start = 109,
				d100_end = 117,
				name = "Engines Down",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 3,
			},
		["Major System Failure"] = {
				d100_start = 118,
				d100_end = 126,
				name = "Major System Failure",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 3,
			},
		["Gruesome Injury"] = {
				d100_start = 127,
				d100_end = 133,
				name = "Major Hull Breach",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 4,
			},
		["Destabilized"] = {
				d100_start = 134,
				d100_end = 138,
				name = "Destabilized",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 4,
			},
		["Fire!"] = {
				d100_start = 139,
				d100_end = 144,
				name = "Fire! (4)",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 4,
			},
		["Breaking Up"] = {
				d100_start = 145,
				d100_end = 153,
				name = "Breaking Up",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 4,
			},
		["Vaporized"] = {
				d100_start = 154,
				d100_end = 9999,
				name = "Vaporized",
				description = "<p>See page 244 Edge of the Empire(tm) or page 258 Age of Rebellion(tm).</p>",
				severity = 999,
			}
	};
