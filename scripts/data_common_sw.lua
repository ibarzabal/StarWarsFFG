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



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
critical_injury_result_data = {
	["Minor Nick"] = {
			d100_start = 1,
			d100_end = 5,
			name = "Minor Nick",
			description = "Target suffers 1 strain.",
			severity = 1,
		},
	["Slowed Down"] = {
			d100_start = 6,
			d100_end = 10,
			name = "Slowed Down",
			description = "The target can only act during the last allied initiative slot on their next turn.",
			severity = 1,
		},
	["Sudden Jolt"] = {
			d100_start = 11,
			d100_end = 15,
			name = "Sudden Jolt",
			description = "The target drops whatever is in hand.",
			severity = 1,
		},
	["Distracted"] = {
			d100_start = 16,
			d100_end = 20,
			name = "Distracted",
			description = "The target cannot perform a free maneuver during their next turn.",
			severity = 1,
		},
	["Off-Balance"] = {
			d100_start = 21,
			d100_end = 25,
			name = "Off-Balance",
			description = "Add [S] to the target's next skill check.",
			severity = 1,
		},
	["Discouraging Wound"] = {
			d100_start = 26,
			d100_end = 30,
			name = "Discouraging Wound",
			description = "Flip one light side Destiny Point to a dark side Destiny Point (reverse if NPC).",
			severity = 1,
		},
	["Stunned"] = {
			d100_start = 31,
			d100_end = 35,
			name = "Stunned",
			description = "The target is staggered until the end of their next turn.",
			severity = 1,
		},
	["Stinger"] = {
			d100_start = 36,
			d100_end = 40,
			name = "Stinger",
			description = "Increase the difficulty of the target's next check by one.",
			severity = 1,
		},
	["Bowled Over"] = {
			d100_start = 41,
			d100_end = 45,
			name = "Bowled Over",
			description = "The target is knocked prone and suffers 1 strain.",
			severity = 2,
		},
	["Head Ringer"] = {
			d100_start = 46,
			d100_end = 50,
			name = "Head Ringer",
			description = "The target increases the difficulty of all Intellect and Cunning checks by one until the end of the encounter.",
			severity = 2,
		},
	["Fearsome Wound"] = {
			d100_start = 51,
			d100_end = 55,
			name = "Fearsome Wound",
			description = "The target increases the difficulty of all Presence and Willpower checks by one until the end of the encounter.",
			severity = 2,
		},
	["Agonizing Wound"] = {
			d100_start = 56,
			d100_end = 60,
			name = "Agonizing Wound",
			description = "The target increases the difficulty of all Brawn and Agility checks by one until the end of the encounter.",
			severity = 2,
		},
	["Slightly Dazed"] = {
			d100_start = 61,
			d100_end = 65,
			name = "Slightly Dazed",
			description = "The target is disoriented until the end of the encounter.",
			severity = 2,
		},
	["Scattered Senses"] = {
			d100_start = 66,
			d100_end = 70,
			name = "Scattered Senses",
			description = "The target removes all [B] from skill checks until the end of the encounter.",
			severity = 2,
		},
	["Hamstrung"] = {
			d100_start = 71,
			d100_end = 75,
			name = "Hamstrung",
			description = "The target loses their free maneuver until the end of the encounter.",
			severity = 2,
		},
	["Overpowered"] = {
			d100_start = 76,
			d100_end = 80,
			name = "Overpowered",
			description = "The target leaves themself open, and the attacker may immediately attempt another free attack against him. using the exact same pool as the original attack.",
			severity = 2,
		},
	["Winded"] = {
			d100_start = 81,
			d100_end = 85,
			name = "Winded",
			description = "Until the end of the encounter, the target cannot voluntarily suffer strain to activate any abilities or gain additional maneuvers.",
			severity = 2,
		},
	["Compromised"] = {
			d100_start = 86,
			d100_end = 90,
			name = "Compromised",
			description = "Increase difficulty of all skill checks by one until the end of the encounter.",
			severity = 2,
		},
	["At the Brink"] = {
			d100_start = 91,
			d100_end = 95,
			name = "At the Brink",
			description = "The target suffers 1 strain each time they perform an action.",
			severity = 3,
		},
	["Crippled"] = {
			d100_start = 96,
			d100_end = 100,
			name = "Crippled",
			description = "One of the target's limbs (selected by the GM) is crippled until healed or replaced. Increase difficulty of all checks that require use of that limb by one.",
			severity = 3,
		},
	["Maimed"] = {
			d100_start = 101,
			d100_end = 105,
			name = "Maimed",
			description = "One of the target's limbs (selected by the GM) is permanently lost. Unless the target has a	cybernetic replacement, the target cannot perform actions that would require the use of that limb. All other actions gain [S].",
			severity = 3,
		},
	["Horrific Injury"] = {
			d100_start = 106,
			d100_end = 110,
			name = "Horrific Injury",
			description = "Roll 1d10 to determine which of the target's characteristics is affected: 1–3 for Brawn, 4–6 for Agility, 7 for Intellect, 8 for Cunning, 9 for Presence, 10 for Willpower. Until this Critical Injury is healed, treat that characteristic as one point lower.",
			severity = 3,
		},
	["Temporarily Lame"] = {
			d100_start = 111,
			d100_end = 115,
			name = "Temporarily Lame",
			description = "Until this Critical Injury is healed, the target cannot perform more than one maneuver during his turn.",
			severity = 3,
		},
	["Blinded"] = {
			d100_start = 116,
			d100_end = 120,
			name = "Blinded",
			description = "The target can no longer see. Upgrade the difficulty of all checks twice. Upgrade the difficulty of Perception and Vigilance checks three times.",
			severity = 3,
		},
	["Knocked Senseless"] = {
			d100_start = 121,
			d100_end = 125,
			name = "Knocked Senseless",
			description = "The target is staggered for the remainder of the encounter.",
			severity = 3,
		},
	["Gruesome Injury"] = {
			d100_start = 126,
			d100_end = 130,
			name = "Gruesome Injury",
			description = "Roll 1d10 to determine which of the target's characteristics is affected: 1–3 for Brawn, 4–6 for Agility, 7 for Intellect, 8 for Cunning, 9 for Presence, 10 for Willpower. That characteristic is permanently reduced by one, to a minimum of 1.",
			severity = 4,
		},
	["Bleeding Out"] = {
			d100_start = 131,
			d100_end = 140,
			name = "Bleeding Out",
			description = "Until this Critical Injury is healed, every round, the target suffers 1 wound and 1 strain at the beginning of their turn. For every 5 wounds they suffer beyond their wound threshold, they suffer one additional Critical Injury. Roll on the chart, suffering the injury (if they suffer this result a second time due to this, roll again).",
			severity = 4,
		},
	["The End is Nigh"] = {
			d100_start = 141,
			d100_end = 150,
			name = "The End is Nigh",
			description = "The target will die after the last Initiative slot during the next round.",
			severity = 4,
		},
	["Dead"] = {
			d100_start = 151,
			d100_end = 9999,
			name = "Dead",
			description = "Complete, obliterated death.",
			severity = 999,
		}
};


	critical_vehicle_result_data = {
		["Mechanical Stress"] = {
				d100_start = 1,
				d100_end = 9,
				name = "Mechanical Stress",
				description = "The ship or vehicle suffers 1 point of system strain.",
				severity = 1,
			},
		["Jostled"] = {
				d100_start = 10,
				d100_end = 18,
				name = "Jostled",
				description = "A small explosion or impact rocks the vehicle. All crew members suffer 1 strain and are disoriented for one round.",
				severity = 1,
			},
		["Losing Power to Shields"] = {
				d100_start = 19,
				d100_end = 27,
				name = "Losing Power to Shields",
				description = "Decrease defense in affected defense zone by 1 until the Critical Hit is repaired. If the ship or vehicle has no defense, suffer 1 point of system strain.",
				severity = 1,
			},
		["Knocked Off Course"] = {
				d100_start = 28,
				d100_end = 36,
				name = "Knocked Off Course",
				description = "A particularly strong blast or impact sends the ship or vehicle careening off in a new direction. On their next turn, the pilot cannot execute any maneuvers and must make a Piloting check to regain control. The difficulty of this check depends on their current speed.",
				severity = 1,
			},
		["Tailspin"] = {
				d100_start = 37,
				d100_end = 45,
				name = "Tailspin",
				description = "All firing from the ship or vehicle suffers [S][S] until the end of the pilot's next turn. All crewmembers are immobilized until the end of the pilot's next turn.",
				severity = 1,
			},
		["Component Hit"] = {
				d100_start = 46,
				d100_end = 54,
				name = "Component Hit",
				description = "One component of the attacker's choice is knocked offline and is rendered inoperable until the end of the following round. For a list of ship components, see <b>Table 7-10: Small Ship or Vehicle Components</b> or <b>Table 7-11: Large Ship or Vehicle Components</b> (in one of the Star Wars Core Rulebooks), depending on target ship silhouette.",
				severity = 1,

			},
		["Failing"] = {
				d100_start = 55,
				d100_end = 63,
				name = "Shields Failing",
				description = "Reduce defense in all defense zones by 1 point until the Critical Hit is repaired. If the ship or vehicle has no defense, suffer 2 points of system strain.",
				severity = 2,
			},
		["Navicomputer Failure"] = {
				d100_start = 64,
				d100_end = 72,
				name = "Navicomputer Failure",
				description = "The navicomputer (or in the case of a ship without a navicomputer, its R2 unit) fails, and the ship cannot make the jump to hyperspace until the Critical Hit is repaired. If the ship or vehicle is without a hyperdrive, the vehicle or ship's navigation systems fail, leaving it flying or driving blind, unable to tell where it is or where it's going.",
				severity = 2,
			},
		["Power Fluctuations"] = {
				d100_start = 73,
				d100_end = 81,
				name = "Power Fluctuations",
				description = "The ship or vehicle is beset by random power surges and outages. The pilot cannot voluntarily inflict system strain on the ship (to gain an extra starship maneuver, for example) until this Critical Hit is repaired.",
				severity = 2,
			},
		["Shields Down"] = {
				d100_start = 82,
				d100_end = 90,
				name = "Shields Down",
				description = "Decrease defense in affected defense zone to 0, and decrease defense in all other defense zones by 1 until this Critical Hit is repaired. While the defense of the affected defense zone cannot be restored until the Critical Hit is repaired, defense from other zones can be assigned to protect that defense zone as usual. If the ship or vehicle is without defense, suffer 4 points of system strain.",
				severity = 3,
			},
		["Engine Damaged"] = {
				d100_start = 91,
				d100_end = 99,
				name = "Engine Damaged",
				description = "The ship or vehicle's maximum speed is reduced by 1 point, to a minimum of 1, until the Critical Hit is repaired.",
				severity = 3,
			},
		["Shield Overload"] = {
				d100_start = 100,
				d100_end = 108,
				name = "Shield Overload",
				description = "The ship's shields completely fail. Decrease the defense of all defense zones to 0. This Critical Hit cannot be repaired until the end of the encounter, and the ship suffers 2 points of system strain. If the ship or vehicle is without defense, reduce armor by 1 until the Critical Hit is repaired.",
				severity = 3,
			},
		["Engines Down"] = {
				d100_start = 109,
				d100_end = 117,
				name = "Engines Down",
				description = "The ship or vehicle's maximum speed is reduced to 0 until the Critical Hit is repaired, although it continues on its present course thanks to momentum. In addition, the ship cannot execute any maneuvers until the Critical Hit is repaired.",
				severity = 3,
			},
		["Major System Failure"] = {
				d100_start = 118,
				d100_end = 126,
				name = "Major System Failure",
				description = "One component of the attacker's choice is heavily damaged and is inoperable until the Critical Hit is repaired. For a list of ship components, see <b>Table 7-10: Small Ship or Vehicle Components</b> or <b>Table 7-11: Large Ship or Vehicle Components</b> depending on target ship silhouette.",
				severity = 3,
			},
		["Major Hull Breach"] = {
				d100_start = 127,
				d100_end = 133,
				name = "Major Hull Breach",
				description = "<p>A huge, gaping tear is torn in the ship's hull, and the ship depressurizes. For ships and vehicles of silhouette 4 and smaller, the entire ship depressurizes in a number of rounds equal to the ship's silhouette. Ships and vehicles of silhouette 5 and larger tend to be highly compartmentalized and have many safeguards against depressurization. These ships don't completely depressurize, but parts do (the specifics regarding which parts depressurize is up to the GM; however, each section of the ship or vehicle that does lose air does so in a number of rounds equal to the vehicle's silhouette). Vehicles and ships operating in an atmosphere can better handle this Critical Hit. However, the huge tear still inflicts penalties, causing the vehicle to suffer the <b>Destabilized Critical Hit</b> instead:</p><p><b>Destabilized</b>: The ship or vehicle's structural integrity is seriously damaged. Reduce the ship or vehicle's hull trauma threshold and system strain threshold to half their original values until repaired.</p>",
				severity = 4,
			},
		["Destabilized"] = {
				d100_start = 134,
				d100_end = 138,
				name = "Destabilized",
				description = "The ship or vehicle's structural integrity is seriously damaged. Reduce the ship or vehicle's hull trauma threshold and system strain threshold to half their original values until repaired.",
				severity = 4,
			},
		["Fire!"] = {
				d100_start = 139,
				d100_end = 144,
				name = "Fire!",
				description = "Fire rages through the ship. The ship or vehicle immediately takes 2 points of system strain, and anyone caught in the fire takes damage (Edge of the Empire Core Book pg 214; Age of Rebellion Core Book pg 228; Force and Destiny Core Book pg 220). A fire can be put out with some quick thinking and appropriate skill or Vigilance and/or Cool checks at the GM's discretion. Once going, a fire takes one round per 2 of the ship's silhouette points to put out.",
				severity = 4,
			},
		["Breaking Up"] = {
				d100_start = 145,
				d100_end = 153,
				name = "Breaking Up",
				description = "The vehicle or ship has suffered so much damage that it begins to come apart at its seams, breaking up and disintegrating around the crew. At the end of the following round, the ship is completely destroyed, and the surrounding environment is littered with debris. Anyone aboard the ship or vehicle has one round to get to an escape pod, bail out, or dive for the nearest hatch before they are lost.",
				severity = 4,
			},
		["Vaporized"] = {
				d100_start = 154,
				d100_end = 9999,
				name = "Vaporized",
				description = "The ship or vehicle is completely destroyed, consumed in a particularly large and dramatic fireball. Nothing survives.",
				severity = 999,
			}
	};
