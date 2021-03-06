// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["PM Pistol", "hgun_Pistol_01_F", 200, "RCLO_WEAPONSECONDARY"],
	["P07 Pistol", "hgun_P07_F", 250, "RCLO_WEAPONSECONDARY"],
	["P07 Pistol (Khaki)", "hgun_P07_khk_F", 250, "noDLC", "RCLO_WEAPONSECONDARY"],
	["Rook-40 Pistol", "hgun_Rook40_F", 250, "RCLO_WEAPONSECONDARY"],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 300, "RCLO_WEAPONSECONDARY"],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 500, "RCLO_WEAPONSECONDARY"],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 300, "RCLO_WEAPONSECONDARY"]
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 300, "RCLO_WEAPONPRIMARY"],
	["Protector SMG", "SMG_05_F", 400, "RCLO_WEAPONPRIMARY"],
	["Sting SMG", "SMG_02_F", 200, "RCLO_WEAPONPRIMARY"],
	["Vermin SMG", "SMG_01_F", 500, "RCLO_WEAPONPRIMARY"]
];

rifleArray = compileFinal str
[
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 1000, "RCLO_WEAPONPRIMARY"],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 500, "RCLO_WEAPONPRIMARY"],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 600, "RCLO_WEAPONPRIMARY"],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 600, "RCLO_WEAPONPRIMARY"],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 650, "RCLO_WEAPONPRIMARY"],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 650, "RCLO_WEAPONPRIMARY"],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 700, "RCLO_WEAPONPRIMARY"],

	["TRG-20 Carbine", "arifle_TRG20_F", 500, "RCLO_WEAPONPRIMARY"],
	["TRG-21 Rifle ", "arifle_TRG21_F", 600, "RCLO_WEAPONPRIMARY"],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 700, "RCLO_WEAPONPRIMARY"],

	["Katiba Carbine", "arifle_Katiba_C_F", 700, "RCLO_WEAPONPRIMARY"],
	["Katiba Rifle", "arifle_Katiba_F", 700, "RCLO_WEAPONPRIMARY"],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 850, "RCLO_WEAPONPRIMARY"],

	["MX Carbine", "arifle_MXC_F", 750, "RCLO_WEAPONPRIMARY"],
	["MX Carbine (Black)", "arifle_MXC_Black_F", "RCLO_WEAPONPRIMARY"],
	["MX Carbine (Khaki)", "arifle_MXC_khk_F", 750, "RCLO_WEAPONPRIMARY"],
	["MX Rifle", "arifle_MX_F", 800, "RCLO_WEAPONPRIMARY"],
	["MX Rifle (Black)", "arifle_MX_Black_F", 800, "RCLO_WEAPONPRIMARY"],
	["MX Rifle (Khaki)", "arifle_MX_khk_F", 800, "noDLC", "RCLO_WEAPONPRIMARY"],
	["MX 3GL Rifle", "arifle_MX_GL_F", 1050, "RCLO_WEAPONPRIMARY"],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 1050, "RCLO_WEAPONPRIMARY"],
	["MX 3GL Rifle (Khaki)", "arifle_MX_GL_khk_F", 1050, "noDLC", "RCLO_WEAPONPRIMARY"],

	["SPAR-16 Rifle", "arifle_SPAR_01_blk_F", 600, "RCLO_WEAPONPRIMARY"],
	["SPAR-16 Rifle (Khaki)", "arifle_SPAR_01_khk_F", 700, "RCLO_WEAPONPRIMARY"],
	["SPAR-16 Rifle (Sand)", "arifle_SPAR_01_snd_F", 700, "RCLO_WEAPONPRIMARY"],
	["SPAR-16 GL Rifle", "arifle_SPAR_01_GL_blk_F", 850, "RCLO_WEAPONPRIMARY"],
	["SPAR-16 GL Rifle (Khaki)", "arifle_SPAR_01_GL_khk_F", 850, "RCLO_WEAPONPRIMARY"],
	["SPAR-16 GL Rifle (Sand)", "arifle_SPAR_01_GL_snd_F", 850, "RCLO_WEAPONPRIMARY"],

	["CAR-95 Rifle", "arifle_CTAR_blk_F", 600, "RCLO_WEAPONPRIMARY"],
	["CAR-95 Rifle (Hex)", "arifle_CTAR_hex_F", 600, "RCLO_WEAPONPRIMARY"],
	["CAR-95 Rifle (G Hex)", "arifle_CTAR_ghex_F", 600, "RCLO_WEAPONPRIMARY"],
	["CAR-95 GL Rifle", "arifle_CTAR_GL_blk_F", 850, "RCLO_WEAPONPRIMARY"],
	["CAR-95 GL Rifle (Hex)", "arifle_CTAR_GL_hex_F", 850, "RCLO_WEAPONPRIMARY"],
	["CAR-95 GL Rifle (G Hex)", "arifle_CTAR_GL_ghex_F", 850, "RCLO_WEAPONPRIMARY"],
	["Type 115 Rifle", "arifle_ARX_blk_F", 1000, "RCLO_WEAPONPRIMARY"],
	["Type 115 Rifle (Hex)", "arifle_ARX_hex_F", 1000, "RCLO_WEAPONPRIMARY"],
	["Type 115 Rifle (G Hex)", "arifle_ARX_ghex_F", 1000, "RCLO_WEAPONPRIMARY"],

	["AKS-74U Carbine", "arifle_AKS_F", 450, "RCLO_WEAPONPRIMARY"],
	["AKM Rifle", "arifle_AKM_F", 500, "RCLO_WEAPONPRIMARY"],
	["AK-12 Rifle", "arifle_AK12_F", 850, "RCLO_WEAPONPRIMARY"],
	["AK-12 GL Rifle", "arifle_AK12_GL_F", 1000, "RCLO_WEAPONPRIMARY"],

	// Marksman Rifles
	["MXM Rifle", "arifle_MXM_F", 700, "RCLO_WEAPONPRIMARY"],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 700, "RCLO_WEAPONPRIMARY"],
	["MXM Rifle (Khaki)", "arifle_MXM_khk_F", 700, "noDLC", "RCLO_WEAPONPRIMARY"],
	["Rahim DMR Rifle", "srifle_DMR_01_F", 775, "RCLO_WEAPONPRIMARY"],
	["Mk18 ABR Rifle", "srifle_EBR_F", 950, "RCLO_WEAPONPRIMARY"],

	// DLC
	["CMR-76 Rifle", "srifle_DMR_07_blk_F", 700, "RCLO_WEAPONPRIMARY"],
	["CMR-76 Rifle (Hex)", "srifle_DMR_07_hex_F", 700, "RCLO_WEAPONPRIMARY"],
	["CMR-76 Rifle (G Hex)", "srifle_DMR_07_ghex_F", 700, "RCLO_WEAPONPRIMARY"],
	["SPAR-17 Rifle", "arifle_SPAR_03_blk_F", 950, "RCLO_WEAPONPRIMARY"],
	["SPAR-17 Rifle (Khaki)", "arifle_SPAR_03_khk_F", 950, "RCLO_WEAPONPRIMARY"],
	["SPAR-17 Rifle (Sand)", "arifle_SPAR_03_snd_F", 950, "RCLO_WEAPONPRIMARY"],

	["Mk14 Rifle (Camo)", "srifle_DMR_06_camo_F", 700, "RCLO_WEAPONPRIMARY"],
	["Mk14 Rifle (Olive)", "srifle_DMR_06_olive_F", 700, "RCLO_WEAPONPRIMARY"],
	["Mk-I EMR Rifle", "srifle_DMR_03_F", 800, "RCLO_WEAPONPRIMARY"],
	["Mk-I EMR Rifle (Camo)", "srifle_DMR_03_multicam_F", 800, "RCLO_WEAPONPRIMARY"],
	["Mk-I EMR Rifle (Khaki)", "srifle_DMR_03_khaki_F", 800, "RCLO_WEAPONPRIMARY"],
	["Mk-I EMR Rifle (Sand)", "srifle_DMR_03_tan_F", 700, "RCLO_WEAPONPRIMARY"],
	["Mk-I EMR Rifle (Woodland)", "srifle_DMR_03_woodland_F", 800, "RCLO_WEAPONPRIMARY"],
	["MAR-10 Rifle", "srifle_DMR_02_F", 1450, "RCLO_WEAPONPRIMARY"],
	["MAR-10 Rifle (Camo)", "srifle_DMR_02_camo_F", 1450, "RCLO_WEAPONPRIMARY"],
	["MAR-10 Rifle (Sand)", "srifle_DMR_02_sniper_F", 1450, "RCLO_WEAPONPRIMARY"],
	["Cyrus Rifle", "srifle_DMR_05_blk_F", 1600, "RCLO_WEAPONPRIMARY"],
	["Cyrus Rifle (Hex)", "srifle_DMR_05_hex_F", 1750, "RCLO_WEAPONPRIMARY"],
	["Cyrus Rifle (Tan)", "srifle_DMR_05_tan_f", 1750, "RCLO_WEAPONPRIMARY"],

	// Sniper Rifles

	["M320 LRR Sniper", "srifle_LRR_F", 3000, "RCLO_WEAPONPRIMARY"],
        ["M320 LRR Sniper (Camo)", "srifle_LRR_camo_F", 3000, "RCLO_WEAPONPRIMARY"],
        ["M320 LRR Sniper (Tropic)", "srifle_LRR_tna_F", 3000, "noDLC", "RCLO_WEAPONPRIMARY"],
        ["GM6 Lynx Sniper", "srifle_GM6_F", 3000, "RCLO_WEAPONPRIMARY"],
        ["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_F", 3500, "RCLO_WEAPONPRIMARY"],
        ["GM6 Lynx Sniper (G Hex)", "srifle_GM6_ghex_F", 3500, "noDLC", "RCLO_WEAPONPRIMARY"],


	["ASP-1 Kir Rifle", "srifle_DMR_04_F", 2000, "RCLO_WEAPONPRIMARY"],
	["ASP-1 Kir Rifle (Tan)", "srifle_DMR_04_tan_F", 2000, "RCLO_WEAPONPRIMARY"]
];

lmgArray = compileFinal str
[
	["MX SW LMG", "arifle_MX_SW_F", 1000, "RCLO_WEAPONPRIMARY"],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 1325, "RCLO_WEAPONPRIMARY"],
	["MX SW LMG (Khaki)", "arifle_MX_SW_khk_F", 1325, "noDLC", "RCLO_WEAPONPRIMARY"],
	["Mk200 LMG", "LMG_Mk200_F", 1500, "RCLO_WEAPONPRIMARY"],
	["Zafir LMG", "LMG_Zafir_F", 1700, "RCLO_WEAPONPRIMARY"],

	["SPAR-16S LMG", "arifle_SPAR_02_blk_F", 1300, "RCLO_WEAPONPRIMARY"],
	["SPAR-16S LMG (Khaki)", "arifle_SPAR_02_khk_F", 1300, "RCLO_WEAPONPRIMARY"],
	["SPAR-16S LMG (Sand)", "arifle_SPAR_02_snd_F", 1300, "RCLO_WEAPONPRIMARY"],
	["CAR-95-1 LMG", "arifle_CTARS_blk_F", 1300, "RCLO_WEAPONPRIMARY"],
	["CAR-95-1 LMG (Hex)", "arifle_CTARS_hex_F", 1300, "RCLO_WEAPONPRIMARY"],
	["CAR-95-1 LMG (G Hex)", "arifle_CTARS_ghex_F", 1300, "RCLO_WEAPONPRIMARY"],
	["LIM-85 LMG", "LMG_03_F", 1350, "RCLO_WEAPONPRIMARY"],

	["SPMG MMG (Sand)", "MMG_02_sand_F", 2000, "RCLO_WEAPONPRIMARY"],
	["SPMG MMG (MTP)", "MMG_02_camo_F", 2000, "RCLO_WEAPONPRIMARY"],
	["SPMG MMG (Black)", "MMG_02_black_F", 2000, "RCLO_WEAPONPRIMARY"],
	["Navid MMG (Tan)", "MMG_01_tan_F", 2500, "RCLO_WEAPONPRIMARY"],
	["Navid MMG (Hex)", "MMG_01_hex_F", 2500, "RCLO_WEAPONPRIMARY"]
];

launcherArray = compileFinal str
[
	["RPG-7", "launch_RPG7_F", 750, "RCLO_WEAPONLAUNCHER"],
	["RPG-42 Alamut", "launch_RPG32_F", 1000, "RCLO_WEAPONLAUNCHER"],
	["RPG-42 Alamut (G Hex)", "launch_RPG32_ghex_F", 1000, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["PCML", "launch_NLAW_F", 100, "RCLO_WEAPONLAUNCHER"],
	["MAAWS Mk4 Mod 0 (Green)", "launch_MRAWS_green_rail_F", 1250, "noDLC", "RCLO_WEAPONLAUNCHER"], // RPG-42 and MAAWS are similar, but MAAWS has longer range
	["MAAWS Mk4 Mod 0 (Olive)", "launch_MRAWS_olive_rail_F", 1250, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["MAAWS Mk4 Mod 0 (Sand)", "launch_MRAWS_sand_rail_F", 1250, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["MAAWS Mk4 Mod 1 (Green)", "launch_MRAWS_green_F", 1500, "noDLC", "RCLO_WEAPONLAUNCHER"], // MAAWS Mod 1 has nightvision and laser rangefinder, while Mod 0 doesn't
	["MAAWS Mk4 Mod 1 (Olive)", "launch_MRAWS_olive_F", 1500, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["MAAWS Mk4 Mod 1 (Sand)", "launch_MRAWS_sand_F", 1500, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["9M135 Vorona (Brown)", "launch_O_Vorona_brown_F", 1750, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["9M135 Vorona (Green)", "launch_O_Vorona_green_F", 1750, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL Compact (Sand)", "launch_Titan_short_F", 2000, "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL Compact (Coyote)", "launch_O_Titan_short_F", 2000, "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 2000, "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL Compact (Tropic)", "launch_B_Titan_short_tna_F", 2000, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL Compact (G Hex)", "launch_O_Titan_short_ghex_F", 2000, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL AA (Sand)", "launch_Titan_F", 1500, "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 1500, "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 1500, "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL AA (Tropic)", "launch_B_Titan_tna_F", 1500, "noDLC", "RCLO_WEAPONLAUNCHER"],
	["Titan MPRL AA (G Hex)", "launch_O_Titan_ghex_F", 1500, "noDLC", "RCLO_WEAPONLAUNCHER"]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd", "B_static_AT_F", 20000], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd", "O_static_AT_F", 20000],
	["Static Titan AT 4Rnd", "I_static_AT_F", 20000],
	["Static Titan AA 4Rnd", "B_static_AA_F", 20000],
	["Static Titan AA 4Rnd", "O_static_AA_F", 20000],
	["Static Titan AA 4Rnd", "I_static_AA_F", 20000],
	["Mk30 HMG .50 Low tripod", "B_HMG_01_F", 10000],
	["Mk30 HMG .50 Low tripod", "O_HMG_01_F", 10000],
	["Mk30 HMG .50 Low tripod", "I_HMG_01_F", 10000],
	// ["Mk30A HMG .50 Sentry", "B_HMG_01_A_F", 5000], // "A" = Autonomous = Overpowered
	// ["Mk30A HMG .50 Sentry", "O_HMG_01_A_F", 5000],
	// ["Mk30A HMG .50 Sentry", "I_HMG_01_A_F", 5000],
	["Mk30 HMG .50 High tripod", "B_HMG_01_high_F", 11000],
	["Mk30 HMG .50 High tripod", "O_HMG_01_high_F", 11000],
	["Mk30 HMG .50 High tripod", "I_HMG_01_high_F", 11000],
	["Mk32 GMG 20mm Low tripod", "B_GMG_01_F", 15000],
	["Mk32 GMG 20mm Low tripod", "O_GMG_01_F", 15000],
	["Mk32 GMG 20mm Low tripod", "I_GMG_01_F", 15000],
	// ["Mk32A GMG 20mm Sentry", "B_GMG_01_A_F", 1000],
	// ["Mk32A GMG 20mm Sentry", "O_GMG_01_A_F", 1000],
	// ["Mk32A GMG 20mm Sentry", "I_GMG_01_A_F", 1000],
	["Mk32 GMG 20mm High tripod", "B_GMG_01_high_F", 16000],
	["Mk32 GMG 20mm High tripod", "O_GMG_01_high_F", 16000],
	["Mk32 GMG 20mm High tripod", "I_GMG_01_high_F", 16000],

	["Mk6 Mortar", "B_Mortar_01_F", 80000, "HIDDEN"],
	["Mk6 Mortar", "O_Mortar_01_F", 80000, "HIDDEN"],
	["Mk6 Mortar", "I_Mortar_01_F", 80000, "HIDDEN"]

];

throwputArray = compileFinal str
[
	["Toxic Gas Grenade (Yellow)", "SmokeShellYellow", 750, "RCLO_THROWABLE"],
	["RGN Mini Grenade", "MiniGrenade", 500, "RCLO_THROWABLE"],
	["RGO Frag Grenade", "HandGrenade", 500, "RCLO_THROWABLE"],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 700, "RCLO_MINE"],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 750, "RCLO_MINE"],
	["APERS Mine", "APERSMine_Range_Mag", 600, "RCLO_MINE"],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 500, "RCLO_MINE"],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 750, "RCLO_MINE"],
	["AT Mine", "ATMine_Range_Mag", 1500, "RCLO_MINE"],
	["Explosive Charge", "DemoCharge_Remote_Mag", 750, "RCLO_MINE"],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 1500, "RCLO_MINE"],
	["Mine Dispenser", "APERSMineDispenser_Mag", 30000, "RCLO_MINE"],
	["Smoke Grenade (White)", "SmokeShell", 50, "RCLO_THROWABLE"],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 50, "RCLO_THROWABLE"],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 50, "RCLO_THROWABLE"],
	["Smoke Grenade (Green)", "SmokeShellGreen", 50, "RCLO_THROWABLE"],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 50, "RCLO_THROWABLE"],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 50, "RCLO_THROWABLE"],
	["Smoke Grenade (Red)", "SmokeShellRed", 50, "RCLO_THROWABLE"]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 10Rnd Mag", "10Rnd_9x21_Mag", 5, "RCLO_MAGAZINE"],
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10, "RCLO_MAGAZINE"],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 15, "RCLO_MAGAZINE"],
	["9mm 30Rnd SMG Mag", "30Rnd_9x21_Mag_SMG_02", 15, "RCLO_MAGAZINE"],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 5, "RCLO_MAGAZINE"],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10, "RCLO_MAGAZINE"],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 15, "RCLO_MAGAZINE"],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 50, "RCLO_MAGAZINE"],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 50, "RCLO_MAGAZINE"],
	["5.45mm 30Rnd Mag", "30Rnd_545x39_Mag_F", 150, "RCLO_MAGAZINE"],
	["5.45mm 30Rnd Tracer (Yellow) Mag", "30Rnd_545x39_Mag_Tracer_F", 150, "RCLO_MAGAZINE"],
	["5.45mm 30Rnd Tracer (Green) Mag", "30Rnd_545x39_Mag_Tracer_Green_F", 150, "RCLO_MAGAZINE"],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 150, "RCLO_MAGAZINE"],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 150, "RCLO_MAGAZINE"],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 150, "RCLO_MAGAZINE"],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 150, "RCLO_MAGAZINE"],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 15, "RCLO_MAGAZINE"],
	["5.56mm 150Rnd Mag", "150Rnd_556x45_Drum_Mag_F", 500, "RCLO_MAGAZINE"],
	["5.56mm 150Rnd Tracer (Red) Mag", "150Rnd_556x45_Drum_Mag_Tracer_F", 500, "RCLO_MAGAZINE"],
	["5.56mm 200Rnd Box", "200Rnd_556x45_Box_F", 750, "RCLO_MAGAZINE"],
	["5.56mm 200Rnd Tracer (Yellow) Box", "200Rnd_556x45_Box_Tracer_F", 750, "RCLO_MAGAZINE"],
	["5.56mm 200Rnd Tracer (Red) Box", "200Rnd_556x45_Box_Tracer_Red_F", 750, "RCLO_MAGAZINE"],
	["5.8mm 30Rnd Mag", "30Rnd_580x42_Mag_F", 400, "RCLO_MAGAZINE"],
	["5.8mm 30Rnd Tracer (Green) Mag", "30Rnd_580x42_Mag_Tracer_F", 400, "RCLO_MAGAZINE"],
	["5.8mm 100Rnd Mag", "100Rnd_580x42_Mag_F", 1000, "RCLO_MAGAZINE"],
	["5.8mm 100Rnd Tracer (Green) Mag", "100Rnd_580x42_Mag_Tracer_F", 400, "RCLO_MAGAZINE"],
	["6.5mm 20Rnd Mag", "20Rnd_650x39_Cased_Mag_F", 500, "RCLO_MAGAZINE"],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 500, "RCLO_MAGAZINE"],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 500, "RCLO_MAGAZINE"],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 500, "RCLO_MAGAZINE"],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 500, "RCLO_MAGAZINE"],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 1000, "RCLO_MAGAZINE"],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 1000, "RCLO_MAGAZINE"],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 1250, "RCLO_MAGAZINE"],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 1250, "RCLO_MAGAZINE"],
	//["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 15],
	["7.62mm 10Rnd Mag", "10Rnd_762x54_Mag", 200, "RCLO_MAGAZINE"],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 400, "RCLO_MAGAZINE"],
	["7.62mm 30Rnd Mag", "30Rnd_762x39_Mag_F", 600, "RCLO_MAGAZINE"],
	["7.62mm 30Rnd Tracer (Yellow) Mag", "30Rnd_762x39_Mag_Tracer_F", 500, "RCLO_MAGAZINE"],
	["7.62mm 30Rnd Tracer (Green) Mag", "30Rnd_762x39_Mag_Tracer_Green_F", 500, "RCLO_MAGAZINE"],
	//["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 150],
	//["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 125],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 1500, "RCLO_MAGAZINE"],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x54_Box_Tracer", 1500, "RCLO_MAGAZINE"],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 600, "RCLO_MAGAZINE"],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 2500, "RCLO_MAGAZINE"],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 700, "RCLO_MAGAZINE"],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 3000, "RCLO_MAGAZINE"],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 1000, "RCLO_MAGAZINE"],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 500, "RCLO_MAGAZINE"],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 1000, "RCLO_MAGAZINE"],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 200, "RCLO_MAGAZINE"],

	[".50 BW 10Rnd Mag", "10Rnd_50BW_Mag_F", 1000, "RCLO_MAGAZINE"],             //                 hit                      hit,  radius
	["PG-7VM HEAT Grenade", "RPG7_F", 750, "RCLO_MAGAZINE"],                   // Direct damage:  343     | Splash damage:  13,  3.0m     | Guidance: none
	["RPG-42 AT Rocket", "RPG32_F", 1000, "RCLO_MAGAZINE"],                     //                 422     |                 28,  2.5m     |           none
	["RPG-42 HE Rocket", "RPG32_HE_F", 1250, "RCLO_MAGAZINE"],                  //                 200     |                 50,  6.0m     |           none
	["MAAWS HEAT 75 Rocket", "MRAWS_HEAT_F", 2000, "RCLO_MAGAZINE"],            //                 435     |                 14,  2.0m     |           none
	["MAAWS HE 44 Rocket", "MRAWS_HE_F", 2500, "RCLO_MAGAZINE"],                //                 200     |                 50,  6.0m     |           none
	["9M135 HEAT Missile", "Vorona_HEAT", 3000, "RCLO_MAGAZINE"],              //                 634     |                 28,  2.5m     |           mouse
	["9M135 HE Missile", "Vorona_HE", 4000, "RCLO_MAGAZINE"],                   //                 220     |                 45,  8.0m     |           mouse
	["PCML AT Missile", "NLAW_F", 1500, "RCLO_MAGAZINE"],                       //                 462     |                 25,  2.4m     |           laser/IR, cold/hot ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 4000, "RCLO_MAGAZINE"],            //                 515     |                 20,  2.0m     |           mouse, laser/IR, hot ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 6000, "RCLO_MAGAZINE"],        //                 100     |                 25, 10.0m     |           mouse, laser/IR
	["Titan AA Missile", "Titan_AA", 4000, "RCLO_MAGAZINE"],                    //                  80     |                 60,  6.0m     |           aircraft

	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 500, "RCLO_MAGAZINE"],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 1000, "RCLO_MAGAZINE"],
	["40mm Toxic Gas", "1Rnd_SmokeYellow_Grenade_shell", 1000, "RCLO_MAGAZINE"],
	["40mm 3Rnd Toxic Gas)", "3Rnd_SmokeYellow_Grenade_shell", 1500, "RCLO_MAGAZINE"],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50, "RCLO_MAGAZINE"],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50, "RCLO_MAGAZINE"],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50, "RCLO_MAGAZINE"],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50, "RCLO_MAGAZINE"],
	//["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50, "RCLO_MAGAZINE"],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50, "RCLO_MAGAZINE"],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100, "RCLO_MAGAZINE"],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100, "RCLO_MAGAZINE"],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100, "RCLO_MAGAZINE"],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100, "RCLO_MAGAZINE"],
	//["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100, "RCLO_MAGAZINE"],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100, "RCLO_MAGAZINE"],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25, "RCLO_MAGAZINE"],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25, "RCLO_MAGAZINE"],
	//["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25, "RCLO_MAGAZINE"],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25, "RCLO_MAGAZINE"],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50, "RCLO_MAGAZINE"],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50, "RCLO_MAGAZINE"],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50, "RCLO_MAGAZINE"],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50, "RCLO_MAGAZINE"],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50, "RCLO_MAGAZINE"]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Suppressor 9mm", "muzzle_snds_L", 50, "item", "RCLO_MUZZLE"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 75, "item", "RCLO_MUZZLE"],
	["Suppressor 5.56mm", "muzzle_snds_M", 100, "item", "RCLO_MUZZLE"],
	["Suppressor 5.56mm (Khaki)", "muzzle_snds_m_khk_F", 100, "item", "noDLC", "RCLO_MUZZLE"],
	["Suppressor 5.56mm (Sand)", "muzzle_snds_m_snd_F", 100, "item", "noDLC", "RCLO_MUZZLE"],
	["Suppressor 5.8mm", "muzzle_snds_58_blk_F", 100, "item", "RCLO_MUZZLE"],
	["Suppressor 5.8mm (G Hex)", "muzzle_snds_58_wdm_F", 100, "item", "RCLO_MUZZLE"],
	["Suppressor 6.5mm", "muzzle_snds_H", 100, "item", "RCLO_MUZZLE"],
	["Suppressor 6.5mm (Khaki)", "muzzle_snds_H_khk_F", 100, "item", "noDLC", "RCLO_MUZZLE"],
	["Suppressor 6.5mm (Sand)", "muzzle_snds_H_snd_F", 100, "item", "noDLC", "RCLO_MUZZLE"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 125, "item", "RCLO_MUZZLE"],

	["Suppressor 6.5mm LMG (Black)", "muzzle_snds_H_MG_blk_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor 6.5mm LMG (Khaki)", "muzzle_snds_H_MG_khk_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor Type 115", "muzzle_snds_65_TI_blk_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor Type 115 (Hex)", "muzzle_snds_65_TI_hex_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor Type 115 (G Hex)", "muzzle_snds_65_TI_ghex_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor 7.62mm", "muzzle_snds_B", 125, "item", "RCLO_MUZZLE"],
	["Suppressor 7.62mm (Khaki)", "muzzle_snds_B_khk_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor 7.62mm (Sand)", "muzzle_snds_B_snd_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor .338", "muzzle_snds_338_black", 500, "item", "RCLO_MUZZLE"],
	["Suppressor .338 (Green)", "muzzle_snds_338_green", 500, "item", "RCLO_MUZZLE"],
	["Suppressor .338 (Sand)", "muzzle_snds_338_sand", 500, "item", "RCLO_MUZZLE"],
	["Suppressor 9.3mm", "muzzle_snds_93mmg", 600, "item", "RCLO_MUZZLE"],
	["Suppressor 9.3mm (Tan)", "muzzle_snds_93mmg_tan", 600, "item", "RCLO_MUZZLE"],

	["Suppressor 6.5mm LMG (Black)", "muzzle_snds_H_MG_blk_F", 125, "item", "noDLC", "RCLO_MUZZLE"],
	["Suppressor 6.5mm LMG (Khaki)", "muzzle_snds_H_MG_khk_F", 125, "item", "noDLC", "RCLO_MUZZLE"],
	["Suppressor 6.5mm Stealth", "muzzle_snds_65_TI_blk_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor 6.5mm Stealth (Hex)", "muzzle_snds_65_TI_hex_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor 6.5mm Stealth (G Hex)", "muzzle_snds_65_TI_ghex_F", 125, "item", "RCLO_MUZZLE"],
	["Suppressor 7.62mm", "muzzle_snds_B", 125, "item", "RCLO_MUZZLE"],
	["Suppressor 7.62mm (Khaki)", "muzzle_snds_B_khk_F", 125, "item", "noDLC", "RCLO_MUZZLE"],
	["Suppressor 7.62mm (Sand)", "muzzle_snds_B_snd_F", 125, "item", "noDLC", "RCLO_MUZZLE"],
	["Suppressor .338", "muzzle_snds_338_black", 150, "item", "RCLO_MUZZLE"],
	["Suppressor .338 (Green)", "muzzle_snds_338_green", 150, "item", "RCLO_MUZZLE"],
	["Suppressor .338 (Sand)", "muzzle_snds_338_sand", 175, "item", "RCLO_MUZZLE"],
	["Suppressor 9.3mm", "muzzle_snds_93mmg", 175, "item", "RCLO_MUZZLE"],
	["Suppressor 9.3mm (Tan)", "muzzle_snds_93mmg_tan", 175, "item", "RCLO_MUZZLE"],

	["Bipod (NATO)", "bipod_01_F_blk", 100, "item", "noDLC", "RCLO_BIPOD"],
	["Bipod (CSAT)", "bipod_02_F_blk", 100, "item", "noDLC", "RCLO_BIPOD"],
	["Bipod (AAF)", "bipod_03_F_blk", 100, "item", "noDLC", "RCLO_BIPOD"],
	["Bipod (MTP)", "bipod_01_F_mtp", 100, "item", "noDLC", "RCLO_BIPOD"],
	["Bipod (Hex)", "bipod_02_F_hex", 100, "item", "noDLC", "RCLO_BIPOD"],
	["Bipod (Olive)", "bipod_03_F_oli", 100, "item", "noDLC", "RCLO_BIPOD"],
	["Bipod (Sand)", "bipod_01_F_snd", 100, "item", "noDLC", "RCLO_BIPOD"],
	["Bipod (Tan)", "bipod_02_F_tan", 100, "item", "noDLC", "RCLO_BIPOD"],
	["Bipod (Khaki)", "bipod_01_F_khk", 100, "item", "noDLC", "RCLO_BIPOD"],
	["Flashlight", "acc_flashlight", 25, "item", "RCLO_WEAPONACCESSORY"],
	["Pistol Flashlight" ,"acc_flashlight_pistol", 25, "item", "RCLO_WEAPONACCESSORY"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item", "RCLO_WEAPONACCESSORY"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item", "RCLO_OPTIC"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item", "RCLO_OPTIC"],
	["ACO SMG (Red)", "optic_aco_smg", 50, "item", "RCLO_OPTIC"],
	["ACO SMG (Green)", "optic_ACO_grn_smg", 50, "item", "RCLO_OPTIC"],
	["ACO (Red)", "optic_Aco", 75, "item", "RCLO_OPTIC"],
	["ACO (Green)", "optic_Aco_grn", 75, "item", "RCLO_OPTIC"],
	["Holosight SMG", "optic_Holosight_smg", 50, "item", "RCLO_OPTIC"],
	["Holosight", "optic_Holosight", 75, "item", "RCLO_OPTIC"],
	["MRCO", "optic_MRCO", 100, "item", "RCLO_OPTIC"],
	["ERCO", "optic_ERCO_blk_F", 100, "item", "RCLO_OPTIC"],
	["ERCO (Khaki)", "optic_ERCO_khk_F", 100, "item", "RCLO_OPTIC"],
	["ERCO (Sand)", "optic_ERCO_snd_F", 100, "item", "RCLO_OPTIC"],
	["ARCO", "optic_Arco", 125, "item", "RCLO_OPTIC"],
	["ARCO (Black)", "optic_Arco_blk_F", 125, "item", "noDLC", "RCLO_OPTIC"],
	["ARCO (G Hex)", "optic_Arco_ghex_F", 125, "item", "noDLC", "RCLO_OPTIC"],
	["RCO", "optic_Hamr", 150, "item", "RCLO_OPTIC"],
	["RCO (Khaki)", "optic_Hamr_khk_F", 150, "item", "noDLC", "RCLO_OPTIC"],
	["MOS", "optic_SOS", 150, "item", "RCLO_OPTIC"],
	["MOS (Khaki)", "optic_SOS_khk_F", 150, "item", "noDLC", "RCLO_OPTIC"],
	["DMS", "optic_DMS", 175, "item", "RCLO_OPTIC"],
	["DMS (G Hex)", "optic_DMS_ghex_F", 175, "item", "noDLC", "RCLO_OPTIC"],
	["Kahlia (Sightless)", "optic_KHS_old", 200, "item", "RCLO_OPTIC"],
	["Kahlia", "optic_KHS_blk", 225, "item", "RCLO_OPTIC"],
	["Kahlia (Hex)", "optic_KHS_hex", 225, "item", "RCLO_OPTIC"],
	["Kahlia (Tan)", "optic_KHS_tan", 225, "item", "RCLO_OPTIC"],
	["AMS", "optic_AMS", 250, "item", "RCLO_OPTIC"],
	["AMS (Khaki)", "optic_AMS_khk", 250, "item", "RCLO_OPTIC"],
	["AMS (Sand)", "optic_AMS_snd", 250, "item", "RCLO_OPTIC"],
	["LRPS", "optic_LRPS", 300, "item", "RCLO_OPTIC"],
	["LRPS (G Hex)", "optic_LRPS_ghex_F", 300, "item", "noDLC", "RCLO_OPTIC"],
	["LRPS (Tropic)", "optic_LRPS_tna_F", 300, "item", "noDLC", "RCLO_OPTIC"],
	["NVS", "optic_NVS", 500, "item", "RCLO_OPTIC"],
	["TWS", "optic_tws", 100000, "item", "HIDDEN", "RCLO_OPTIC", "RCLO_RARE"], // To hide from store list, add "HIDDEN" after "item", like "item", "HIDDEN"]
	["TWS MG", "optic_tws_mg", 150000, "item", "HIDDEN", "RCLO_OPTIC", "RCLO_RARE"],
	["Nightstalker", "optic_Nightstalker", 200000, "item", "HIDDEN", "RCLO_OPTIC", "RCLO_RARE"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Gas Mask (NATO)", "H_CrewHelmetHeli_B", 1500, "hat", "RCLO_HEADGEAR"],
	["Gas Mask (CSAT)", "H_CrewHelmetHeli_O", 1500, "hat", "RCLO_HEADGEAR"],
	["Gas Mask (AAF)", "H_CrewHelmetHeli_I", 1500, "hat", "RCLO_HEADGEAR"],
	["Modular Helmet (Digi)", "H_HelmetIA", 100, "hat", "RCLO_HEADGEAR"],
	["MICH (Camo)", "H_HelmetIA_net", 50, "hat", "RCLO_HEADGEAR"],
	["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat", "RCLO_HEADGEAR"],
	["Combat Helmet", "H_HelmetB", 100, "hat", "RCLO_HEADGEAR"],
	["Combat Helmet (Black)", "H_HelmetB_black", 100, "hat", "RCLO_HEADGEAR"],
	["Combat Helmet (Camonet)", "H_HelmetB_camo", 100, "hat", "RCLO_HEADGEAR"],
	["Stealth Combat Helmet", "H_HelmetB_TI_tna_F", 125, "hat", "RCLO_HEADGEAR"],
	["Enhanced Combat Helmet", "H_HelmetSpecB", 125, "hat", "RCLO_HEADGEAR"],
	["Enhanced Combat Helmet (Black)", "H_HelmetSpecB_blk", 125, "hat", "RCLO_HEADGEAR"],
	["Enhanced Combat Helmet (Snakeskin)", "H_HelmetSpecB_snakeskin", 125, "hat", "RCLO_HEADGEAR"],
	["Enhanced Combat Helmet (Tropic)", "H_HelmetB_Enh_tna_F", 175, "hat", "noDLC", "RCLO_HEADGEAR"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 160, "hat", "RCLO_HEADGEAR"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 160, "hat", "RCLO_HEADGEAR"],
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 175, "hat", "RCLO_HEADGEAR"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 175, "hat", "RCLO_HEADGEAR"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 200, "hat", "RCLO_HEADGEAR"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 200, "hat", "RCLO_HEADGEAR"],
	["Defender Helmet (G Hex)", "H_HelmetLeaderO_ghex_F", 200, "hat", "noDLC", "RCLO_HEADGEAR"],
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 160, "hat", "RCLO_HEADGEAR"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 160, "hat", "RCLO_HEADGEAR"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 160, "hat", "RCLO_HEADGEAR"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 160, "hat", "RCLO_HEADGEAR"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 160, "hat", "RCLO_HEADGEAR"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 160, "hat", "RCLO_HEADGEAR"],
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 150, "hat", "RCLO_HEADGEAR"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 150, "hat", "RCLO_HEADGEAR"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 150, "hat", "RCLO_HEADGEAR"],
	//["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 150, "hat", "RCLO_HEADGEAR"],
	//["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 150, "hat", "RCLO_HEADGEAR"],
	//["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 150, "hat", "RCLO_HEADGEAR"],
	["Military Cap (Blue)", "H_MilCap_blue", 125, "hat", "RCLO_HEADGEAR"],
	["Military Cap (Gray)", "H_MilCap_gry", 125, "hat", "RCLO_HEADGEAR"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 125, "hat", "RCLO_HEADGEAR"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 125, "hat", "RCLO_HEADGEAR"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 125, "hat", "RCLO_HEADGEAR"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 125, "hat", "RCLO_HEADGEAR"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 125, "hat", "RCLO_HEADGEAR"],
	["Rangemaster Cap", "H_Cap_headphones", 125, "hat", "RCLO_HEADGEAR"],
	["Bandana (Black)", "H_Bandanna_gry", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Blue)", "H_Bandanna_blu", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Coyote)", "H_Bandanna_cbr", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Headset)", "H_Bandanna_khk_hs", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Khaki)", "H_Bandanna_khk", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (MTP)", "H_Bandanna_mcamo", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Sage)", "H_Bandanna_sgg", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Sand)", "H_Bandanna_sand", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Surfer)", "H_Bandanna_surfer", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Surfer, Black)", "H_Bandanna_surfer_blk", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Surfer, Green)", "H_Bandanna_surfer_grn", 110, "hat", "RCLO_HEADGEAR"],
	["Bandana (Woodland)", "H_Bandanna_camo", 110, "hat", "RCLO_HEADGEAR"],
	["Bandanna Mask (Black)", "H_BandMask_blk", 110, "hat", "RCLO_HEADGEAR"],
	["Bandanna Mask (Demon)", "H_BandMask_demon", 110, "hat", "RCLO_HEADGEAR"],
	["Bandanna Mask (Khaki)", "H_BandMask_khk", 110, "hat", "RCLO_HEADGEAR"],
	["Bandanna Mask (Reaper)", "H_BandMask_reaper", 110, "hat", "RCLO_HEADGEAR"],
	["Beanie (Black)", "H_Watchcap_blk", 110, "hat", "RCLO_HEADGEAR"],
	["Beanie (Brown)", "H_Watchcap_cbr", 110, "hat", "RCLO_HEADGEAR"],
	["Beanie (Khaki)", "H_Watchcap_khk", 110, "hat", "RCLO_HEADGEAR"],
	["Beanie (Navy)", "H_Watchcap_sgg", 110, "hat", "RCLO_HEADGEAR"],
	["Beanie (Olive)", "H_Watchcap_camo", 110, "hat", "RCLO_HEADGEAR"],
	["Beret (Black)", "H_Beret_blk", 110, "hat", "RCLO_HEADGEAR"],
	["Beret (Colonel)", "H_Beret_Colonel", 110, "hat", "RCLO_HEADGEAR"],
	["Beret (NATO)", "H_Beret_02", 110, "hat", "RCLO_HEADGEAR"],
	["Beret (Green)", "H_Beret_grn", 110, "hat", "RCLO_HEADGEAR"],
	["Beret (Police)", "H_Beret_blk_POLICE", 110, "hat", "RCLO_HEADGEAR"],
	["Beret (Red)", "H_Beret_red", 110, "hat", "RCLO_HEADGEAR"],
	["Beret (SAS)", "H_Beret_brn_SF", 110, "hat", "RCLO_HEADGEAR"],
	["Beret (SF)", "H_Beret_grn_SF", 110, "hat", "RCLO_HEADGEAR"],
	["Beret (RED)", "H_Beret_ocamo", 110, "hat", "RCLO_HEADGEAR"],
	["Black Turban", "H_TurbanO_blk", 150, "hat", "RCLO_HEADGEAR"],
	["Booniehat (Dirty)", "H_Booniehat_dirty", 110, "hat", "RCLO_HEADGEAR"],
	["Booniehat (Green)", "H_Booniehat_grn", 110, "hat", "RCLO_HEADGEAR"],
	["Booniehat (Khaki)", "H_Booniehat_indp", 110, "hat", "RCLO_HEADGEAR"],
	["Booniehat (AAF)", "H_Booniehat_dgtl", 110, "hat", "RCLO_HEADGEAR"],
	["Booniehat (Headset)", "H_Booniehat_khk_hs", 110, "hat", "RCLO_HEADGEAR"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 110, "hat", "RCLO_HEADGEAR"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 110, "hat", "RCLO_HEADGEAR"],
	["Booniehat (Olive)", "H_Booniehat_oli", 110, "hat", "RCLO_HEADGEAR"],
	["Booniehat (Sand)", "H_Booniehat_tan", 110, "hat", "RCLO_HEADGEAR"],
	["Fedora (Blue)", "H_Hat_blue", 110, "hat", "RCLO_HEADGEAR"],
	["Fedora (Brown)", "H_Hat_brown", 110, "hat", "RCLO_HEADGEAR"],
	["Fedora (Camo)", "H_Hat_camo", 110, "hat", "RCLO_HEADGEAR"],
	["Fedora (Checker)", "H_Hat_checker", 110, "hat", "RCLO_HEADGEAR"],
	["Fedora (Gray)", "H_Hat_grey", 110, "hat", "RCLO_HEADGEAR"],
	["Fedora (Tan)", "H_Hat_tan", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (BI)", "H_Cap_grn_BI", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Black)", "H_Cap_blk", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Blue)", "H_Cap_blu", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Green)", "H_Cap_grn", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (ION)", "H_Cap_blk_ION", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Olive)", "H_Cap_oli", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Olive, Headset)", "H_Cap_oli_hs", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Police)", "H_Cap_police", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Press)", "H_Cap_press", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Red)", "H_Cap_red", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Surfer)", "H_Cap_surfer", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (Tan)", "H_Cap_tan", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (UK)", "H_Cap_khaki_specops_UK", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (US Black)", "H_Cap_usblack", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (US MTP)", "H_Cap_tan_specops_US", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (AAF)", "H_Cap_blk_Raven", 110, "hat", "RCLO_HEADGEAR"],
	["Cap (OPFOR)", "H_Cap_brn_SPECOPS", 110, "hat", "RCLO_HEADGEAR"],
	["Shemag (Olive)", "H_Shemag_olive", 125, "hat", "RCLO_HEADGEAR"],
	["Shemag (Olive, Headset)", "H_Shemag_olive_hs", 125, "hat", "RCLO_HEADGEAR"],
	["Shemag (Tan)", "H_ShemagOpen_tan", 125, "hat", "RCLO_HEADGEAR"],
	["Shemag (White)", "H_ShemagOpen_khk", 125, "hat", "RCLO_HEADGEAR"],
 	["Shemag mask (Tan)", "H_Shemag_tan", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 125, "hat", "RCLO_HEADGEAR"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 125, "hat", "RCLO_HEADGEAR"]
];

uniformArray = compileFinal str
[
	["Wetsuit", "U_B_Wetsuit", 400, "uni", "RCLO_UNIFORM"],
	["Wetsuit", "U_O_Wetsuit", 400, "uni", "RCLO_UNIFORM"],
	["Wetsuit", "U_I_Wetsuit", 400, "uni", "RCLO_UNIFORM"],
	["Light Ghillie", "U_B_GhillieSuit", 400, "uni", "RCLO_UNIFORM"],
	["Light Ghillie", "U_O_GhillieSuit", 400, "uni", "RCLO_UNIFORM"],
	["Light Ghillie", "U_I_GhillieSuit", 400, "uni", "RCLO_UNIFORM"],
	["Light Ghillie (Jungle)", "U_B_T_Sniper_F", 400, "uni", "RCLO_UNIFORM"],
	["Light Ghillie (Jungle)", "U_O_T_Sniper_F", 400, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Arid)", "U_B_FullGhillie_ard", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Arid)", "U_O_FullGhillie_ard", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Arid)", "U_I_FullGhillie_ard", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Lush)", "U_B_FullGhillie_lsh", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Lush)", "U_O_FullGhillie_lsh", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Lush)", "U_I_FullGhillie_lsh", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Semi-Arid)", "U_B_FullGhillie_sard", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Semi-Arid)", "U_O_FullGhillie_sard", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Semi-Arid)", "U_I_FullGhillie_sard", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Jungle)", "U_B_T_FullGhillie_tna_F", 3000, "uni", "RCLO_UNIFORM"],
	["Full Ghillie (Jungle)", "U_O_T_FullGhillie_tna_F", 3000, "uni", "RCLO_UNIFORM"],
	["CTRG Stealth Uniform", "U_B_CTRG_Soldier_F", 4000, "uni", "RCLO_UNIFORM"],
	["Special Purpose Suit (Hex)", "U_O_V_Soldier_Viper_hex_F", 3000, "uni", "RCLO_UNIFORM"],
	["Special Purpose Suit (G Hex)", "U_O_V_Soldier_Viper_F", 3000, "uni", "RCLO_UNIFORM"],
	["Survival Fatigues (NATO)", "U_B_survival_uniform", 400, "uni", "RCLO_UNIFORM"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 125, "uni", "RCLO_UNIFORM"],
	["Default Uniform (CSAT)", "U_O_OfficerUniform_ocamo", 125, "uni", "RCLO_UNIFORM"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 125, "uni", "RCLO_UNIFORM"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 125, "uni", "RCLO_UNIFORM"],
	["Combat Fatigues (Tropic)", "U_B_T_Soldier_F", 125, "uni", "noDLC"],
	["Combat Fatigues (Tee)", "U_B_CombatUniform_mcam_tshirt", 125, "uni", "RCLO_UNIFORM"],
	["Combat Fatigues (Gangsta)", "U_I_G_resistanceLeader_F", 125, "uni", "RCLO_UNIFORM"],
	["Combat Fatigues (Rolled-up)", "U_I_CombatUniform_shortsleeve", 125, "uni", "RCLO_UNIFORM"],
	["CTRG Combat Uniform", "U_B_CTRG_1", 125, "uni", "RCLO_UNIFORM"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_2", 125, "uni", "RCLO_UNIFORM"],
	["CTRG Combat Uniform (Rolled-up)", "U_B_CTRG_3", 125, "uni", "RCLO_UNIFORM"],
	["Fatigues (Hex)", "U_O_CombatUniform_ocamo", 150, "uni", "RCLO_UNIFORM"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 150, "uni", "RCLO_UNIFORM"],
	["Fatigues (G Hex)", "U_O_T_Soldier_F", 150, "uni", "noDLC"],
	["Officer Fatigues", "U_I_OfficerUniform", 125, "uni", "RCLO_UNIFORM"],
	["Pilot Coveralls", "U_B_PilotCoveralls", 125, "uni", "RCLO_UNIFORM"],
	["Pilot Coveralls", "U_O_PilotCoveralls", 125, "uni", "RCLO_UNIFORM"],
	["Pilot Coveralls", "U_I_pilotCoveralls", 125, "uni", "RCLO_UNIFORM"],
	["Heli Pilot Coveralls", "U_B_HeliPilotCoveralls", 125, "uni", "RCLO_UNIFORM"],
	["Heli Pilot Coveralls", "U_I_HeliPilotCoveralls", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Garment", "U_BG_Guerilla1_1", 125, "uni", "RCLO_UNIFORM"],  // BLUFOR
	["Guerilla Outfit (Plain, Dark)", "U_BG_Guerilla2_1", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Outfit (Pattern)", "U_BG_Guerilla2_2", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Outfit (Plain, Light)", "U_BG_Guerilla2_3", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Smocks", "U_BG_Guerilla3_1", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Apparel", "U_BG_Guerrilla_6_1", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Uniform", "U_BG_leader", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Garment", "U_OG_Guerilla1_1", 125, "uni", "RCLO_UNIFORM"], // OPFOR
	["Guerilla Outfit (Plain, Dark)", "U_OG_Guerilla2_1", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Outfit (Pattern)", "U_OG_Guerilla2_2", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Outfit (Plain, Light)", "U_OG_Guerilla2_3", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Smocks", "U_OG_Guerilla3_1", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Apparel", "U_OG_Guerrilla_6_1", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Uniform", "U_OG_leader", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Garment", "U_IG_Guerilla1_1", 125, "uni", "RCLO_UNIFORM"], // Independent
	["Guerilla Outfit (Plain, Dark)", "U_IG_Guerilla2_1", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Outfit (Pattern)", "U_IG_Guerilla2_2", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Outfit (Plain, Light)", "U_IG_Guerilla2_3", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Smocks", "U_IG_Guerilla3_1", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Apparel", "U_IG_Guerrilla_6_1", 125, "uni", "RCLO_UNIFORM"],
	["Guerilla Uniform", "U_IG_leader", 125, "uni", "RCLO_UNIFORM"],
	/*["Worker Coveralls", "U_C_WorkerCoveralls", 125, "uni", "RCLO_UNIFORM"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 125, "uni", "RCLO_UNIFORM"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 125, "uni", "RCLO_UNIFORM"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 125, "uni", "RCLO_UNIFORM"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 125, "uni", "RCLO_UNIFORM"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 125, "uni", "RCLO_UNIFORM"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 125, "uni", "RCLO_UNIFORM"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 125, "uni", "RCLO_UNIFORM"],*/
	["Polo (Competitor)", "U_Competitor", 125, "uni", "RCLO_UNIFORM"],
	["Polo (Rangemaster)", "U_Rangemaster", 125, "uni", "RCLO_UNIFORM"],
	/*["Racing Suit (Black)", "U_C_Driver_1_black", 125, "uni", "RCLO_UNIFORM"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 125, "uni", "RCLO_UNIFORM"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 125, "uni", "RCLO_UNIFORM"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 125, "uni", "RCLO_UNIFORM"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 125, "uni", "RCLO_UNIFORM"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 125, "uni", "RCLO_UNIFORM"],
	["Racing Suit (White)", "U_C_Driver_1_white", 125, "uni", "RCLO_UNIFORM"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 125, "uni", "RCLO_UNIFORM"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 125, "uni", "RCLO_UNIFORM"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 125, "uni", "RCLO_UNIFORM"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 125, "uni", "RCLO_UNIFORM"],*/
	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 5000, "uni", "RCLO_UNIFORM"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 5000, "uni", "RCLO_UNIFORM"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 5000, "uni", "RCLO_UNIFORM"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 400, "vest", "RCLO_VEST"],
	["Rebreather (CSAT)", "V_RebreatherIR", 400, "vest", "RCLO_VEST"],
	["Rebreather (AAF)", "V_RebreatherIA", 400, "vest", "RCLO_VEST"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", 400, "vest", "RCLO_VEST"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", 400, "vest", "RCLO_VEST"],
	["Carrier Lite (CTRG)", "V_PlateCarrierL_CTRG", 400, "vest", "RCLO_VEST"],
	["Carrier Lite (Tropic)", "V_PlateCarrier1_tna_F", 400, "vest", "noDLC"],
	["Carrier Rig (Green)", "V_PlateCarrier2_rgr", 600, "vest", "RCLO_VEST"],
	["Carrier Rig (Black)", "V_PlateCarrier2_blk", 600, "vest", "RCLO_VEST"],
	["Carrier Rig (CTRG)", "V_PlateCarrierH_CTRG", 600, "vest", "RCLO_VEST"],
	["Carrier Rig (Tropic)", "V_PlateCarrier2_tna_F", 600, "vest", "noDLC"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", 1000, "vest", "RCLO_VEST"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", 1000, "vest", "RCLO_VEST"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", 1000, "vest", "RCLO_VEST"],
	["Carrier GL Rig (Tropic)", "V_PlateCarrierGL_tna_F", 1000, "vest", "noDLC"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", 1200, "vest", "RCLO_VEST"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", 1200, "vest", "RCLO_VEST"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", 1200, "vest", "RCLO_VEST"],
	["Carrier Special Rig (Tropic)", "V_PlateCarrierSpec_tna_F", 1200, "vest", "noDLC"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", 800, "vest", "RCLO_VEST"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", 800, "vest", "RCLO_VEST"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", 900, "vest", "RCLO_VEST"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", 900, "vest", "RCLO_VEST"],
	["LBV Harness", "V_HarnessO_brn", 200, "vest", "RCLO_VEST"],
	["LBV Harness (Gray)", "V_HarnessO_gry", 200, "vest", "RCLO_VEST"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", 200, "vest", "RCLO_VEST"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", 200, "vest", "RCLO_VEST"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", 200, "vest", "RCLO_VEST"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", 200, "vest", "RCLO_VEST"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", 200, "vest", "RCLO_VEST"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", 200, "vest", "RCLO_VEST"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", 200, "vest", "RCLO_VEST"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", 300, "vest", "RCLO_VEST"],
	["Chest Rig (Green)", "V_Chestrig_rgr", 300, "vest", "RCLO_VEST"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", 300, "vest", "RCLO_VEST"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", 300, "vest", "RCLO_VEST"],
	["Tactical Vest (Black)", "V_TacVest_blk", 500, "vest", "RCLO_VEST"],
	["Tactical Vest (Brown)", "V_TacVest_brn", 500, "vest", "RCLO_VEST"],
	["Tactical Vest (Camo)", "V_TacVest_camo", 500, "vest", "RCLO_VEST"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", 500, "vest", "RCLO_VEST"],
	["Tactical Vest (Olive)", "V_TacVest_oli", 500, "vest", "RCLO_VEST"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", 600, "vest", "RCLO_VEST"],
	["Raven Night Vest", "V_TacVestIR_blk", 700, "vest", "RCLO_VEST"],
	["Press Vest", "V_Press_F", 400, "vest", "RCLO_VEST"],
	["Deck Crew Vest (Blue)", "V_DeckCrew_blue_F", 100, "vest", "noDLC", "RCLO_VEST"],
	["Deck Crew Vest (Green)", "V_DeckCrew_green_F", 100, "vest", "noDLC", "RCLO_VEST"],
	["Deck Crew Vest (Yellow)", "V_DeckCrew_yellow_F", 100, "vest", "noDLC", "RCLO_VEST"],
	["Deck Crew Vest (Red)", "V_DeckCrew_red_F", 100, "vest", "noDLC", "RCLO_VEST"],
	["Deck Crew Vest (Brown)", "V_DeckCrew_brown_F", 100, "vest", "noDLC", "RCLO_VEST"],
	["Deck Crew Vest (Violet)", "V_DeckCrew_violet_F", 100, "vest", "noDLC", "RCLO_VEST"],
	["Deck Crew Vest (White)", "V_DeckCrew_white_F", 100, "vest", "noDLC", "RCLO_VEST"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack", "RCLO_BACKPACK"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 300, "backpack", "RCLO_BACKPACK"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 300, "backpack", "RCLO_BACKPACK"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 300, "backpack", "RCLO_BACKPACK"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 300, "backpack", "RCLO_BACKPACK"],
	["Assault Pack (Tropic)", "B_AssaultPack_tna_F", 300, "backpack", "noDLC", "RCLO_BACKPACK"],

	["Field Pack (Black)", "B_FieldPack_blk", 300, "backpack", "RCLO_BACKPACK"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 300, "backpack", "RCLO_BACKPACK"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 300, "backpack", "RCLO_BACKPACK"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 300, "backpack", "RCLO_BACKPACK"],
	["Field Pack (G Hex)", "B_FieldPack_ghex_F", 300, "backpack", "noDLC", "RCLO_BACKPACK"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 450, "backpack", "RCLO_BACKPACK"],
	["Kitbag (Green)", "B_Kitbag_rgr", 450, "backpack", "RCLO_BACKPACK"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 450, "backpack", "RCLO_BACKPACK"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 450, "backpack", "RCLO_BACKPACK"],

	["Viper Light Harness (Black)", "B_ViperLightHarness_blk_F", 550, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Viper Light Harness (Hex)", "B_ViperLightHarness_hex_F", 550, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Viper Light Harness (G Hex)", "B_ViperLightHarness_ghex_F", 550, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Viper Light Harness (Khaki)", "B_ViperLightHarness_khk_F", 550, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Viper Light Harness (Olive)", "B_ViperLightHarness_oli_F", 550, "backpack", "noDLC", "RCLO_BACKPACK"],

	["Viper Harness (Black)", "B_ViperHarness_blk_F", 725, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Viper Harness (Hex)", "B_ViperHarness_hex_F", 725, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Viper Harness (G Hex)", "B_ViperHarness_ghex_F", 725, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Viper Harness (Khaki)", "B_ViperHarness_khk_F", 725, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Viper Harness (Olive)", "B_ViperHarness_oli_F", 725, "backpack", "noDLC", "RCLO_BACKPACK"],

	["Carryall (Khaki)", "B_Carryall_khk", 1500, "backpack", "RCLO_BACKPACK"],
	["Carryall (MTP)", "B_Carryall_mcamo", 1500, "backpack", "RCLO_BACKPACK"],
	["Carryall (Olive)", "B_Carryall_oli", 1500, "backpack", "RCLO_BACKPACK"],
	["Carryall (Urban)", "B_Carryall_oucamo", 1500, "backpack", "RCLO_BACKPACK"],
	["Carryall (G Hex)", "B_Carryall_ghex_F", 1500, "backpack", "noDLC", "RCLO_BACKPACK"],

	["Bergen (Digital)", "B_Bergen_dgtl_F", 3000, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Bergen (Hex)", "B_Bergen_hex_F", 3000, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Bergen (MTP)", "B_Bergen_mcamo_F", 3000, "backpack", "noDLC", "RCLO_BACKPACK"],
	["Bergen (Tropic)", "B_Bergen_tna_F", 3000, "backpack", "noDLC"]
];

genItemArray = compileFinal str
[
	["Airstrike Designator", "Laserdesignator_02", 1000000, "binoc", "noDLC"],
	["Designator Batteries", "Laserbatteries", 50, "item"],
	["UAV Terminal (NATO)", "B_UavTerminal", 150, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 150, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 150, "gps"],
	//["Quadcopter UAV (NATO)", "B_UAV_01_backpack_F", 2500, "backpack", "RCLO_BACKPACK"],
	//["Quadcopter UAV (CSAT)", "O_UAV_01_backpack_F", 2500, "backpack", "RCLO_BACKPACK"],
	//["Quadcopter UAV (AAF)", "I_UAV_01_backpack_F", 2500, "backpack", "RCLO_BACKPACK"],
	//["Hexacopter UAV (NATO)", "B_UAV_06_backpack_F", 1000, "backpack", "RCLO_BACKPACK"],
	//["Hexacopter UAV (CSAT)", "O_UAV_06_backpack_F", 1000, "backpack", "RCLO_BACKPACK"],
	//["Hexacopter UAV (AAF)", "I_UAV_06_backpack_F", 1000, "backpack", "RCLO_BACKPACK"],
	//["Hexacopter Medical UAV (NATO)", "B_UAV_06_medical_backpack_F", 1500, "backpack", "RCLO_BACKPACK"],
	//["Hexacopter Medical UAV (CSAT)", "O_UAV_06_medical_backpack_F", 1500, "backpack", "RCLO_BACKPACK"],
	//["Hexacopter Medical UAV (AAF)", "I_UAV_06_medical_backpack_F", 1500, "backpack", "RCLO_BACKPACK"],
	//["Hexacopter Demining UAV", "C_IDAP_UAV_06_antimine_backpack_F", 10000, "backpack", "RCLO_BACKPACK"],
	["Remote Designator (Sand)", "B_Static_Designator_01_weapon_F", 750, "backpack", "RCLO_BACKPACK"],
	["Remote Designator (Hex)", "O_Static_Designator_02_weapon_F", 750, "backpack", "RCLO_BACKPACK"],
	["GPS", "ItemGPS", 1000, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item", "RCLO_ITEM"],
	["Medikit", "Medikit", 1000, "item", "RCLO_ITEM"],
	["Toolkit", "ToolKit", 1000, "item", "RCLO_ITEM"],
	["Mine Detector", "MineDetector", 1500, "item", "RCLO_ITEM"],
	["Diving Goggles", "G_Diving", 1000, "gogg", "RCLO_GOGGLE"],
	["NV Goggles (Brown)", "NVGoggles", 100, "nvg"],
	["NV Goggles (Black)", "NVGoggles_OPFOR", 1000, "nvg"],
	["NV Goggles (Green)", "NVGoggles_INDEP", 1000, "nvg"],
	["NV Goggles (Tropic)", "NVGoggles_tna_F", 1000, "nvg"],
	["Compact NVG (Hex)", "O_NVGoggles_hex_F", 1500, "nvg"],
	["Compact NVG (G Hex)", "O_NVGoggles_ghex_F", 1500, "nvg"],
	["Compact NVG (Urban)", "O_NVGoggles_urb_F", 1500, "nvg"],
	["Combat Goggles (Full Screen Night Vision)", "G_Combat_Goggles_tna_F", 5000, "gogg", "noDLC"],
	["Binoculars", "Binocular", 50, "binoc"],

	["Rangefinder", "Rangefinder", 200, "binoc", "RCLO_BINOCULAR"],
	["Laser Designator (Sand)", "Laserdesignator", 500, "binoc", "noDLC", "RCLO_BINOCULAR"],
	["Laser Designator (Olive)", "Laserdesignator_03", 550, "binoc", "noDLC", "RCLO_BINOCULAR"],
	["Laser Designator (Khaki)", "Laserdesignator_01_khk_F", 550, "binoc", "noDLC", "RCLO_BINOCULAR"],
//["Laser Designated", "Laserdesignator_02_ghex_F", 600, "binoc", "noDLC"],

	["IR Designator Grenade", "B_IR_Grenade", 50, "mag", "WEST"],
	["IR Designator Grenade", "O_IR_Grenade", 50, "mag", "EAST"],
	["IR Designator Grenade", "I_IR_Grenade", 50, "mag", "GUER"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],

	["Stealth Balaclava (Black)", "G_Balaclava_TI_blk_F", 400, "gogg", "RCLO_GOGGLE"],
	["Stealth Balaclava (Black, Goggles)", "G_Balaclava_TI_G_blk_F", 450, "gogg", "RCLO_GOGGLE"],
	["Stealth Balaclava (Green)", "G_Balaclava_TI_tna_F", 400, "gogg", "RCLO_GOGGLE"],
	["Stealth Balaclava (Full Screen Night Vision)", "G_Balaclava_TI_G_tna_F", 5000, "gogg", "RCLO_GOGGLE"],
	["Combat Goggles", "G_Combat", 125, "gogg", "RCLO_GOGGLE"],
	["VR Goggles", "G_Goggles_VR", 125, "gogg", "RCLO_GOGGLE"],
	["Balaclava (Black)", "G_Balaclava_blk", 125, "gogg", "RCLO_GOGGLE"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 125, "gogg", "RCLO_GOGGLE"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 125, "gogg", "RCLO_GOGGLE"],
	["Balaclava (Olive)", "G_Balaclava_oli", 125, "gogg", "RCLO_GOGGLE"],
	["Bandana (Aviator)", "G_Bandanna_aviator", 125, "gogg", "RCLO_GOGGLE"],
	["Bandana (Beast)", "G_Bandanna_beast", 125, "gogg", "RCLO_GOGGLE"],
	["Bandana (Black)", "G_Bandanna_blk", 125, "gogg", "RCLO_GOGGLE"],
	["Bandana (Khaki)", "G_Bandanna_khk", 125, "gogg", "RCLO_GOGGLE"],
	["Bandana (Olive)", "G_Bandanna_oli", 125, "gogg", "RCLO_GOGGLE"],
	["Bandana (Shades)", "G_Bandanna_shades", 125, "gogg", "RCLO_GOGGLE"],
	["Bandana (Sport)", "G_Bandanna_sport", 125, "gogg", "RCLO_GOGGLE"],
	["Bandana (Tan)", "G_Bandanna_tan", 125, "gogg", "RCLO_GOGGLE"],

	["Aviator Glasses", "G_Aviator", 110, "gogg", "RCLO_GOGGLE"],
	["Ladies Shades", "G_Lady_Blue", 110, "gogg", "RCLO_GOGGLE"],
	["Ladies Shades (Fire)", "G_Lady_Red", 110, "gogg", "RCLO_GOGGLE"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 110, "gogg", "RCLO_GOGGLE"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 110, "gogg", "RCLO_GOGGLE"],
	["Low Profile Goggles", "G_Lowprofile", 110, "gogg", "RCLO_GOGGLE"],
	["Shades (Black)", "G_Shades_Black", 110, "gogg", "RCLO_GOGGLE"],
	["Shades (Blue)", "G_Shades_Blue", 110, "gogg", "RCLO_GOGGLE"],
	["Shades (Green)", "G_Shades_Green", 110, "gogg", "RCLO_GOGGLE"],
	["Shades (Red)", "G_Shades_Red", 110, "gogg", "RCLO_GOGGLE"],
	["Spectacle Glasses", "G_Spectacles", 110, "gogg", "RCLO_GOGGLE"],
	["Sport Shades (Fire)", "G_Sport_Red", 110, "gogg", "RCLO_GOGGLE"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 110, "gogg", "RCLO_GOGGLE"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 110, "gogg", "RCLO_GOGGLE"],
	["Sport Shades (Style)", "G_Sport_Checkered", 110, "gogg", "RCLO_GOGGLE"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 110, "gogg", "RCLO_GOGGLE"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 110, "gogg", "RCLO_GOGGLE"],
	["Square Shades", "G_Squares_Tinted", 110, "gogg", "RCLO_GOGGLE"],
	["Square Spectacles", "G_Squares", 110, "gogg", "RCLO_GOGGLE"],
	["Tactical Glasses", "G_Tactical_Clear", 110, "gogg", "RCLO_GOGGLE"],
	["Tactical Shades", "G_Tactical_Black", 110, "gogg", "RCLO_GOGGLE"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 110, "gogg", "RCLO_GOGGLE"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Camo Net", "CamoNet_INDP_open_F", 200, "object", "HIDDEN"], // unlisted, only for object saving

	["Pier Ladder", "Land_PierLadder_F", 2500, "object"],
	["Ammo Cache", "Box_FIA_Support_F", 2500, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 250, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 250, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 1000, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 1000, "object"],
	["Boom Gate", "Land_BarGate_F", 1500, "object"],
	["Pipes", "Land_Pipes_Large_F", 2000, "object"],
	["Concrete Frame", "Land_CncShelter_F", 2000, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 2000, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 2000, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 3500, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 5000, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 1500, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 2000, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 2500, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 5000, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 4000, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 5000, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 6000, "object"],
	["Concrete Wall", "Land_CncWall1_F", 4000, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 4000, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 6000, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 6000, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 1800, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 4000, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 5000, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 1500, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 1500, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 2000, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 1500, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 1500, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 2500, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 5000, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 5000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 8000, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 30000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 3500, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 5000, "object"],
	["Scaffolding", "Land_Scaffolding_F", 2500, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	// SKIPSAVE = will not be autosaved until first manual force save, good for cheap vehicles that usually get abandoned

	["Kart", "C_Kart_01_F", 500, "vehicle", "SKIPSAVE"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 700, "vehicle", "SKIPSAVE"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 750, "vehicle", "SKIPSAVE"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 750, "vehicle", "SKIPSAVE"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 750, "vehicle", "SKIPSAVE"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 750, "vehicle", "SKIPSAVE"],

	["Hatchback", "C_Hatchback_01_F", 800, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1200, "vehicle", "SKIPSAVE"],
	["SUV", "C_SUV_01_F", 1500, "vehicle", "SKIPSAVE"],

	["MB 4WD", "C_Offroad_02_unarmed_F", 1200, "vehicle", "SKIPSAVE"],
	["MB 4WD (Guerilla)", "I_C_Offroad_02_unarmed_F", 1100, "vehicle", "SKIPSAVE"],
	["MB 4WD LMG", "I_C_Offroad_02_LMG_F", 1750, "vehicle", "SKIPSAVE"],
	["MB 4WD AT", "I_C_Offroad_02_AT_F", 7500, "vehicle"],

	["Offroad", "C_Offroad_01_F", 1000, "vehicle", "SKIPSAVE"],
	["Offroad Camo", "I_G_Offroad_01_F", 1250, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Offroad Police", "B_GEN_Offroad_01_gen_F", 1250, "vehicle", "SKIPSAVE", "noDLC"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle", "SKIPSAVE"],
	["Offroad HMG", "I_G_Offroad_01_armed_F", 2500, "vehicle", "SKIPSAVE"],
	["Offroad AT", "I_G_Offroad_01_AT_F", 7500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 700, "vehicle", "SKIPSAVE"],
	["Truck Camo", "I_G_Van_01_transport_F", 800, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Truck Box", "C_Van_01_box_F", 900, "vehicle", "SKIPSAVE"],

	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle", "SKIPSAVE"],
	["Fuel Truck Camo", "I_G_Van_01_fuel_F", 2100, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob

	["Van Cargo", "C_Van_02_vehicle_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Transport", "C_Van_02_transport_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Police Cargo", "B_GEN_Van_02_vehicle_F", 1250, "vehicle", "SKIPSAVE"],
	["Van Police Transport", "B_GEN_Van_02_transport_F", 1250, "vehicle", "SKIPSAVE"],
	["Van Ambulance", "C_Van_02_medevac_F", 1500, "vehicle", "SKIPSAVE"],
	["Van Repair", "C_Van_02_service_F", 2000, "vehicle", "SKIPSAVE"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	//["HEMTT Resupply", "B_Truck_01_ammo_F", 5000, "vehicle"],
	//["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7000, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 8000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 9000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 10000, "vehicle"],

	["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	//["Tempest Resupply", "O_Truck_03_ammo_F", 5000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7000, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 8000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 9000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 10000, "vehicle"],

	//["Zamak Resupply", "I_Truck_02_ammo_F", 4000, "vehicle"],
	["Zamak Transport", "I_Truck_02_transport_F", 4500, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 6000, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 7000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 8000, "vehicle"],
	["Zamak MRPL", "I_Truck_02_MRL_F", 100000, "vehicle", "HIDDEN"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 30000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 30000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 30000, "vehicle"]
];

armoredArray = compileFinal str
[

	["Prowler Light", "B_CTRG_LSV_01_light_F", 4250, "vehicle", "SKIPSAVE"],
	["Prowler", "B_T_LSV_01_unarmed_F", 4500, "vehicle", "SKIPSAVE"],
	["Prowler HMG", "B_T_LSV_01_armed_F", 10000, "vehicle", "SKIPSAVE"],
	["Prowler AT", "B_T_LSV_01_AT_F", 25000, "vehicle"],
	["Qilin", "O_T_LSV_02_unarmed_F", 1500, "vehicle", "SKIPSAVE"],
	["Qilin Minigun", "O_T_LSV_02_armed_F", 12500, "vehicle", "SKIPSAVE"],
	["Qilin AT", "O_T_LSV_02_AT_F", 25000, "vehicle"],


	["Hunter", "B_MRAP_01_F", 4000, "vehicle", "SKIPSAVE"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 10000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 15000, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle", "SKIPSAVE"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 10000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 15000, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle", "SKIPSAVE"],

	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["AWC 303 Nyx Recon", "I_LT_01_scout_F", 10000, "vehicle"],
	["AWC 304 Nyx Autocannon", "I_LT_01_cannon_F", 30000, "vehicle"],
	["AWC 301 Nyx AT", "I_LT_01_AT_F", 35000, "vehicle"],
	["AWC 302 Nyx AA", "I_LT_01_AA_F", 25000, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_v2_F", 25000, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 37500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 42500, "vehicle"],
	["Rhino MGS", "B_AFV_Wheeled_01_cannon_F", 70000, "vehicle"],
	["Rhino MGS UP", "B_AFV_Wheeled_01_up_cannon_F", 80000, "vehicle"]

];

tanksArray = compileFinal str
[

	["CRV-6e Bobcat (Resupply)", "B_APC_Tracked_01_CRV_F", 40000, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 40000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 50000, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 55000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 70000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 80000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 100000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 110000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 120000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 120000, "vehicle"],
	["T-140 Angara", "O_MBT_04_cannon_F", 130000, "vehicle"],
	["T-140K Angara", "O_MBT_04_command_F", 140000, "vehicle"],
	["Scorcher", "B_MBT_01_arty_F", 300000, "vehicle", "HIDDEN"],
	["Sochor", "O_MBT_02_arty_F", 300000, "vehicle", "HIDDEN"],
	["Sandstorm", "B_MBT_01_mlrs_F", 300000, "vehicle", "HIDDEN"],
	["Zamak MRL", "I_Truck_02_MRL_F", 200000, "vehicle", "HIDDEN"]

];

helicoptersArray = compileFinal str
[
	//["Hexacopter Demining UAV", "C_IDAP_UAV_06_antimine_F", (call genItemArray) select {_x select 1 == "C_IDAP_UAV_06_antimine_backpack_F"} select 0 select 2, "vehicle", "HIDDEN"], // for resupply price

	["M-900 Civilian", "C_Heli_Light_01_civil_F", 3000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 4000, "vehicle"], // MH-6
	["PO-30 Orca (Unarmed)", "O_Heli_Light_02_unarmed_F", 5000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Unarmed)", "I_Heli_light_03_unarmed_F", 5000, "vehicle"], // AW159
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 6000, "vehicle"], // AW101

	//["Mi-290 Taru (Resupply)", "O_Heli_Transport_04_ammo_F", 7500, "vehicle"],
	["Mi-290 Taru (Crane)", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box)", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel)", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench)", "O_Heli_Transport_04_bench_F", 8000, "vehicle"],
	["Mi-290 Taru (Transport)", "O_Heli_Transport_04_covered_F", 8000, "vehicle"],
	["Mi-290 Taru (Medical)", "O_Heli_Transport_04_medevac_F", 8000, "vehicle"],
	["Mi-290 Taru (Repair)", "O_Heli_Transport_04_repair_F", 8000, "vehicle"],

	["CH-67 Huron (Unarmed)", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-67 Huron (Armed)", "B_Heli_Transport_03_F", 12000, "vehicle"], // CH-47 with 2 side miniguns

	["UH-80 Ghost Hawk", "B_Heli_Transport_01_F", 10000, "vehicle"], // UH-60 Stealth with 2 side minigunsB_Heli_Transport_01_camo_F
	["UH-80 Grenade Hawk", "B_Heli_Transport_01_camo_F", 22500, "vehicle"], // UH-60 Stealth with 2 side miniguns

	["AH-9 Pawnee (Gun-Only)", "B_Heli_Light_01_dynamicLoadout_F", 20000, "vehicle", "variant_pawneeGun"], // Armed AH-6 (no missiles)
	["AH-9 Pawnee (SkyHunter)", "B_Heli_Light_01_dynamicLoadout_F", 35000, "vehicle", "variant_PawneeSkyHunter"],

	["PO-30 Orca (Anti-Air)", "O_Heli_Light_02_dynamicLoadout_F", 30000, "vehicle", "variant_orcaAA"], // Armed Ka-60
	["PO-30 Orca (DAGR)", "O_Heli_Light_02_dynamicLoadout_F", 50000, "vehicle", "variant_orcaDAGR"], // Armed Ka-60
	["PO-30 Orca (Mission)", "O_Heli_Light_02_dynamicLoadout_F", 250000, "vehicle", "variant_orcaMission", "HIDDEN"], // Armed Ka-60

	["WY-55 Hellcat (Anti-Air)", "I_Heli_light_03_dynamicLoadout_F", 40000, "vehicle", "variant_HellAA"], // Armed AW159
	["WY-55 Hellcat (AT)", "I_Heli_light_03_dynamicLoadout_F", 70000, "vehicle", "variant_HellAT"], // Armed AW159
	["WY-55 Hellcat (Mission)", "I_Heli_light_03_dynamicLoadout_F", 250000, "vehicle", "variant_HellMission", "HIDDEN"], // Armed AW159

	["AH-99 Blackfoot (Mission)", "B_Heli_Attack_01_dynamicLoadout_F", 600000, "vehicle", "variant_BlackfootMission", "HIDDEN"], // RAH-66 with gunner
	["AH-99 Blackfoot (AA)", "B_Heli_Attack_01_dynamicLoadout_F", 175000, "vehicle", "variant_BlackfootAA"], // RAH-66 with gunner
	["AH-99 Blackfoot (AG)", "B_Heli_Attack_01_dynamicLoadout_F", 175000, "vehicle", "variant_BlackfootAG"], // RAH-66 with gunner

	["Mi-48 Kajman", "O_Heli_Attack_02_dynamicLoadout_F", 200000, "vehicle", "variant_KajmanAG"], // Mi-28 with gunner
	["Mi-48 Kajman (Mission AG)", "O_Heli_Attack_02_dynamicLoadout_F", 500000, "vehicle", "variant_KajmanMissionAG", "HIDDEN"], // Mi-28 with gunner
	["Mi-48 Kajman (Mission CAS)", "O_Heli_Attack_02_dynamicLoadout_F", 600000, "vehicle", "variant_KajmanMissionCAS", "HIDDEN"], // Mi-28 with gunner
	["Y-32 Xi'an (Air)", "O_T_VTOL_02_infantry_dynamicLoadout_F", 175000, "vehicle", "variant_Xi'anAir"],
	["Y-32 Xi'an (Earth)", "O_T_VTOL_02_infantry_dynamicLoadout_F", 175000, "vehicle", "variant_Xi'anEarth"],

	["MQ-12 Falcon Scout UAV", "B_T_UAV_03_dynamicLoadout_F", 100000, "vehicle", "variant_FalconScout"],
	["MQ-12 Falcon AT UAV", "B_T_UAV_03_dynamicLoadout_F", 150000, "vehicle", "variant_FalconAT"]

];

planesArray = compileFinal str
[

	["Caesar Combat(7.62/4 DAR)", "C_Plane_Civil_01_racing_F", 7500, "vehicle"],
  ["Caesar Combat(50cal/MK82)", "C_Plane_Civil_01_F", 10000, "vehicle"],

	["A-143 Buzzard AA", "I_Plane_Fighter_03_dynamicLoadout_F", 150000, "vehicle", "variant_buzzardAA"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_dynamicLoadout_F", 225000, "vehicle", "variant_buzzardCAS"],
	["A-143 Buzzard (Mission)", "I_Plane_Fighter_03_dynamicLoadout_F", 600000, "vehicle", "variant_buzzardMission", "HIDDEN"],

	["A-149 Gryphon (AA)", "I_Plane_Fighter_04_F", 200000, "vehicle", "variant_GryphonA"],
	["A-149 Gryphon (Ground)", "I_Plane_Fighter_04_F", 200000, "vehicle", "variant_GryphonG"],
	["A-149 Gryphon (Mission)", "I_Plane_Fighter_04_F", 900000, "vehicle", "variant_GryphonM", "HIDDEN"],

	["F/A-181 Black Wasp AA", "B_Plane_Fighter_01_F", 200000, "vehicle", "variant_blackwaspAA"],
	["F/A-181 Black Wasp (Air Support)", "B_Plane_Fighter_01_Stealth_F", 1100000, "vehicle", "HIDDEN"], // no missiles or bombs
	["F/A-181 Black Wasp (Ground Support)", "B_Plane_Fighter_01_F", 1000000, "vehicle", "HIDDEN"],

	["To-201 Shikra AA", "O_Plane_Fighter_02_F", 200000, "vehicle", "variant_shikraAA"],
	["To-201 Shikra (Air Support)", "O_Plane_Fighter_02_Stealth_F", 1000000, "vehicle", "HIDDEN"], // no missiles or bombs
	["To-201 Shikra (Ground Support)", "O_Plane_Fighter_02_F", 1000000, "vehicle", "HIDDEN"],

	["A-164 Wipeout AT", "B_Plane_CAS_01_dynamicLoadout_F", 1000000, "vehicle", "variant_WipeoutMission", "HIDDEN"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_dynamicLoadout_F", 1000000, "vehicle", "variant_NeoMission", "HIDDEN"],

	["V-44 X Blackfish (Infantry)", "B_T_VTOL_01_infantry_F", 25000, "vehicle"],
	["V-44 X Blackfish (Gunship)", "B_T_VTOL_01_armed_F", 125000, "vehicle"],

	["Y-32 Xi'an (Air)", "O_T_VTOL_02_infantry_dynamicLoadout_F", 175000, "vehicle", "variant_Xi'anAir"],
	["Y-32 Xi'an (Earth)", "O_T_VTOL_02_infantry_dynamicLoadout_F", 175000, "vehicle", "variant_Xi'anEarth"],

	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_dynamicLoadout_F", 140000, "vehicle", "variant_GreyBomber"],
	["K40 Ababil-3 Bomber UAV", "O_UAV_02_dynamicLoadout_F", 140000, "vehicle", "variant_GreyBomber"],
	["K40 Ababil-3 Bomber UAV", "I_UAV_02_dynamicLoadout_F", 140000, "vehicle", "variant_GreyBomber"],

	["MQ4A Greyhawk Missile UAV", "B_UAV_02_dynamicLoadout_F", 120000, "vehicle", "variant_GreyMissile"],
	["K40 Ababil-3 Missile UAV", "O_UAV_02_dynamicLoadout_F", 120000, "vehicle", "variant_GreyMissile"],
	["K40 Ababil-3 Missile UAV", "I_UAV_02_dynamicLoadout_F", 120000, "vehicle", "variant_GreyMissile"],

	["KH-3A Fenghuang Missile UAV", "O_T_UAV_04_CAS_F", 80000, "vehicle"],

	["UCAV Sentinel Bomber", "B_UAV_05_F", 120000, "vehicle", "variant_sentinelBomber"],
	["UCAV Sentinel AA", "B_UAV_05_F", 50000, "vehicle", "variant_sentinelMissile"]


];

boatsArray = compileFinal str
[
	["Water Scooter", "C_Scooter_Transport_01_F", 1000, "boat", "SKIPSAVE"],

	["Rescue Boat", "C_Rubberboat", 2000, "boat", "SKIPSAVE"],
	["Rescue Boat (NATO)", "B_Lifeboat", 2000, "boat", "SKIPSAVE"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 2000, "boat", "SKIPSAVE"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 3000, "boat", "SKIPSAVE"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 3000, "boat", "SKIPSAVE"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 3000, "boat", "SKIPSAVE"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 6000, "boat", "SKIPSAVE"],
	["Motorboat", "C_Boat_Civil_01_F", 2000, "boat", "SKIPSAVE"],
	["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 1900, "boat", "SKIPSAVE"],
	["Motorboat Police", "C_Boat_Civil_01_police_F", 2000, "boat", "SKIPSAVE"],

	["RHIB", "I_C_Boat_Transport_02_F", 2500, "boat", "SKIPSAVE"],

	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 6000, "boat", "SKIPSAVE"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 7000, "boat", "SKIPSAVE"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 7000, "boat", "SKIPSAVE"],

	["SDV Submarine (NATO)", "B_SDV_01_F", 4000, "submarine", "SKIPSAVE"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 4000, "submarine", "SKIPSAVE"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 4000, "submarine", "SKIPSAVE"]

];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	// Deprecated
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All", // "All" must always be first in colorsArray
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			//["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			//["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Red - Kart", [[0, _kartDir + "kart_01_base_red_co.paa"]]] // no red TextureSource :(
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo - MH-9", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White - MH-9", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy - MH-9", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION - MH-9", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Blackfoot paintjob
		"Heli_Attack_01_base_F",
		[
			["Rusty - AH-99 Blackfoot", [[0, _wreckDir + "wreck_heli_attack_01_co.paa"]]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Rusty - Mi-48 Kajman", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy - Mi-48 Kajman", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Gorgon paintjobs
		"APC_Wheeled_03_base_F",
		[
			["Tan - AFV-4 Gorgon", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty - Hatchback", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	],

	[ // GOD EMPEROR
		"B_MBT_01_cannon_F",
		[
			["Trump - Slammer", [
				[0, _texDir + "slammer_trump_0.paa"],
				[1, _texDir + "slammer_trump_1.paa"]
			]]
		]
	],
	[
		"B_MBT_01_TUSK_F",
		[
			["Trump - Slammer", [[2, _texDir + "slammer_trump_2.paa"]]]

		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	//["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	//["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Artillery Strike", "artillery", "", "client\icons\tablet.paa", 500000, 100000, "HIDDEN"],

	//["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	//["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 1500, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500, "HIDDEN"]

];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

RCLO_ARRAY = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray + call throwputArray + call ammoArray + call accessoriesArray + call headArray + call uniformArray + call vestArray + call backpackArray + call genItemArray);

storeConfigDone = compileFinal "true";
