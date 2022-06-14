﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.util.ResourceManager

package com.mcleodgaming.ssf2.util
{
    import __AS3__.vec.Vector;
    import flash.utils.clearInterval;
    import flash.utils.setInterval;
    import flash.utils.setTimeout;
    import com.mcleodgaming.ssf2.Main;
    import com.mcleodgaming.ssf2.util.ResourceManager;
    import com.mcleodgaming.ssf2.api.SSF2API;
    import com.mcleodgaming.ssf2.Version;
    import com.mcleodgaming.ssf2.controllers.MenuController;
    import com.mcleodgaming.ssf2.engine.Stats;
    import flash.display.MovieClip;
    import flash.media.Sound;
    import __AS3__.vec.*;

    public class ResourceManager 
    {

        private static const manifestJSON:Class = ResourceManager_manifestJSON;
        public static const manifestJSONData:Object = {
	"stage_xp": {},
	"character": {
		"pichu": {
			"guid": "159ee7d0-2fa9-486b-be61-1fb64af3c775",
			"seriesIcon": "PokemonSymbol",
			"file": "pichu.ssf",
			"file_pub": "DAT44.ssf",
			"name": "Pichu"
		},
		"rayman": {
			"guid": "95ccbf99-c6ca-4f42-888a-4f3c141be003",
			"seriesIcon": "rayman_icon",
			"file": "rayman.ssf",
			"file_pub": "DAT302.ssf",
			"name": "Rayman"
		},
		"tails": {
			"guid": "d83b1ca4-568d-44e9-9de3-d850b54b1643",
			"seriesIcon": "sonic_symbol1",
			"file": "tails.ssf",
			"file_pub": "DAT214.ssf",
			"name": "Tails"
		},
		"pit": {
			"guid": "281bcdc7-b7cb-4af3-b27d-741cd94ec033",
			"seriesIcon": "piticon",
			"file": "pit.ssf",
			"file_pub": "DAT32.ssf",
			"name": "Pit"
		},
		"krystal": {
			"guid": "26a0a3ce-7a50-11e6-8b77-86f30ca893d3",
			"seriesIcon": "Starfox_Symbol",
			"file": "krystal.ssf",
			"file_pub": "DAT191.ssf",
			"name": "Krystal"
		},
		"empty3": {},
		"donkeykong": {
			"guid": "1c0a5cc2-123d-415f-8c2b-44031b295965",
			"seriesIcon": "dkicon",
			"file": "donkeykong.ssf",
			"file_pub": "DAT324.ssf",
			"name": "Donkey Kong"
		},
		"sandbag": {
			"guid": "45222bb7-fb4d-4103-b84e-84ebd27839fa",
			"seriesIcon": "smash_icon",
			"file": "sandbag.ssf",
			"file_pub": "DAT72.ssf",
			"name": "Sandbag"
		},
		"chibirobo": {
			"guid": "c51a5173-a652-4c9a-9410-87b46e9702c3",
			"seriesIcon": "chibi_icon",
			"file": "chibirobo.ssf",
			"file_pub": "DAT61.ssf",
			"name": "Chibi-Robo"
		},
		"empty2": {},
		"pikachu": {
			"guid": "946e3554-6365-4321-8a04-aeac03dba42a",
			"seriesIcon": "PokemonSymbol",
			"file": "pikachu.ssf",
			"file_pub": "DAT101.ssf",
			"name": "Pikachu"
		},
		"captainfalcon": {
			"guid": "addc9f5b-48d8-49df-9b23-e53d64c0c65e",
			"seriesIcon": "fzero",
			"file": "captainfalcon.ssf",
			"file_pub": "DAT99.ssf",
			"name": "Captain Falcon"
		},
		"gameandwatch": {
			"guid": "65319743-bb44-4f70-87ce-cee7a2551a18",
			"seriesIcon": "gameandwatch_icon",
			"file": "gameandwatch.ssf",
			"file_pub": "DAT85.ssf",
			"name": "Mr. Game & Watch"
		},
		"bandanadee": {
			"guid": "d445439f-d1bc-4b9e-be8b-cb156f498f38",
			"seriesIcon": "Kirby_Symbol",
			"file": "bandanadee.ssf",
			"file_pub": "DAT210.ssf",
			"name": "Bandana Dee"
		},
		"sora": {
			"guid": "57068ce5-ad07-446a-8a80-5a2939219e9f",
			"seriesIcon": "khicon",
			"file": "sora.ssf",
			"file_pub": "DAT82.ssf",
			"name": "Sora"
		},
		"luffy": {
			"guid": "06bb35e1-a906-4c35-a226-90fc885c8bf6",
			"seriesIcon": "luffy_icon",
			"file": "luffy.ssf",
			"file_pub": "DAT42.ssf",
			"name": "Luffy"
		},
		"sheik": {
			"guid": "68019ba3-5e17-4104-9a4c-3f9b8e4b3fe8",
			"seriesIcon": "zeldaicon",
			"file": "zelda.ssf",
			"file_pub": "DAT277.ssf",
			"name": "Sheik"
		},
		"peach": {
			"guid": "e7a05f86-e27b-4066-a4eb-447866207179",
			"seriesIcon": "MarioSymbol",
			"file": "peach.ssf",
			"file_pub": "DAT164.ssf",
			"name": "Peach"
		},
		"bomberman": {
			"guid": "5db5bfc3-78aa-4ae8-8208-c39174673a01",
			"seriesIcon": "Bomberman_Symbol",
			"file": "bomberman.ssf",
			"file_pub": "DAT15.ssf",
			"name": "Bomberman"
		},
		"empty1": {},
		"bowser": {
			"guid": "5aaef56e-4ee3-4586-b2f8-c38985e8f457",
			"seriesIcon": "MarioSymbol",
			"file": "bowser.ssf",
			"file_pub": "DAT264.ssf",
			"name": "Bowser"
		},
		"obama": {
			"guid": "9e4073ca-1ba9-118a-72ec-afd6ec50ea12",
			"seriesIcon": "questionicon",
			"file": "presidentobama.ssf",
			"name": "President Barack Obama"
		},
		"blackmage": {
			"guid": "9b58e501-9135-4535-a349-53d9efde8809",
			"seriesIcon": "bmseries",
			"file": "blackmage.ssf",
			"file_pub": "DAT115.ssf",
			"name": "Black Mage"
		},
		"falco": {
			"guid": "9b96dbd7-b8d2-4127-90ca-509ee15e2cdc",
			"seriesIcon": "Starfox_Symbol",
			"file": "falco.ssf",
			"file_pub": "DAT198.ssf",
			"name": "Falco"
		},
		"lloyd": {
			"guid": "45af93ac-000a-4b46-b897-f7cc4a79d50b",
			"seriesIcon": "talesOf",
			"file": "lloyd.ssf",
			"file_pub": "DAT69.ssf",
			"name": "Lloyd"
		},
		"zamus": {
			"guid": "1ce8dafd-54ea-480a-a2d0-30c1e6db4dbf",
			"seriesIcon": "MetroidSymbolCSS",
			"file": "zamus.ssf",
			"file_pub": "DAT39.ssf",
			"name": "Zero Suit Samus"
		},
		"fox": {
			"guid": "f207f49e-ebb8-462c-a8be-0d5b7aced723",
			"seriesIcon": "Starfox_Symbol",
			"file": "fox.ssf",
			"file_pub": "DAT171.ssf",
			"name": "Fox"
		},
		"zelda": {
			"guid": "68019ba3-5e17-4104-9a4c-3f9b8e4b3fe8",
			"seriesIcon": "zeldaicon",
			"file": "zelda.ssf",
			"file_pub": "DAT277.ssf",
			"name": "Zelda"
		},
		"pacman": {
			"guid": "7bf0a5ef-e130-4a6a-9fa0-abfa59109cc4",
			"seriesIcon": "pacmanicon",
			"file": "pacman.ssf",
			"file_pub": "DAT154.ssf",
			"name": "PAC-MAN"
		},
		"kirby": {
			"guid": "5f670bf6-edee-4bbf-b247-3a51d5ebddd3",
			"seriesIcon": "Kirby_Symbol",
			"file": "kirby.ssf",
			"file_pub": "DAT156.ssf",
			"name": "Kirby"
		},
		"ness": {
			"guid": "4e1cd2be-4e9d-4fae-8fb9-d81ed2ba93d9",
			"seriesIcon": "mother_symbol1",
			"file": "ness.ssf",
			"file_pub": "DAT19.ssf",
			"name": "Ness"
		},
		"ganondorf": {
			"guid": "d7fd5abd-a788-4fb1-b4f2-f215f0cd387c",
			"seriesIcon": "zeldaicon",
			"file": "ganondorf.ssf",
			"file_pub": "DAT220.ssf",
			"name": "Ganondorf"
		},
		"masterhand": {
			"guid": "e036de98-6d26-4df9-9b7f-a8db69206e30",
			"file": "masterhand.ssf",
			"file_pub": "DAT151.ssf"
		},
		"yoshi": {
			"guid": "cc7f6275-769a-403a-aadf-725696cfbc79",
			"seriesIcon": "Yoshi_Symbol",
			"file": "yoshi.ssf",
			"file_pub": "DAT65.ssf",
			"name": "Yoshi"
		},
		"naruto": {
			"guid": "d6a9d9ac-29fa-4015-bd40-81e2769db6ae",
			"seriesIcon": "Narutosymbol",
			"file": "naruto.ssf",
			"file_pub": "DAT64.ssf",
			"name": "Naruto"
		},
		"isaac": {
			"guid": "52250ee5-0349-4ba7-ad59-09f44465291e",
			"seriesIcon": "isaac_icon",
			"file": "isaac.ssf",
			"file_pub": "DAT312.ssf",
			"name": "Isaac"
		},
		"link": {
			"guid": "6c4013ee-0672-4264-80e8-a3d63c506a6c",
			"seriesIcon": "zeldaicon",
			"file": "link.ssf",
			"file_pub": "DAT141.ssf",
			"name": "Link"
		},
		"lucario": {
			"guid": "26d57abe-4f5b-11e7-b114-b2f933d5fe66",
			"seriesIcon": "PokemonSymbol",
			"file": "lucario.ssf",
			"file_pub": "DAT109.ssf",
			"name": "Lucario"
		},
		"metaknight": {
			"guid": "94736651-1a09-4993-a55b-5b96aa402331",
			"seriesIcon": "Kirby_Symbol",
			"file": "metaknight.ssf",
			"file_pub": "DAT71.ssf",
			"name": "Meta Knight"
		},
		"samus": {
			"guid": "abad854d-8167-43a7-96a8-d0a666a8ffd3",
			"seriesIcon": "MetroidSymbolCSS",
			"file": "samus.ssf",
			"file_pub": "DAT295.ssf",
			"name": "Samus"
		},
		"ichigo": {
			"guid": "17955b8c-7dff-4167-ada2-b89d5e1562b8",
			"seriesIcon": "bleach_symbol1",
			"file": "ichigo.ssf",
			"file_pub": "DAT13.ssf",
			"name": "Ichigo"
		},
		"ryu": {
			"guid": "463576b7-b84b-4a6c-a683-48b44a2162be",
			"seriesIcon": "streetfighter_icon",
			"file": "ryu.ssf",
			"file_pub": "DAT269.ssf",
			"name": "Ryu"
		},
		"megaman": {
			"guid": "716b3fa7-a83b-42fe-b781-3ac8f0063fd6",
			"seriesIcon": "mmicon",
			"file": "megaman.ssf",
			"file_pub": "DAT134.ssf",
			"name": "Mega Man"
		},
		"goku": {
			"guid": "5652e175-9647-4342-a726-105cb4fab89a",
			"seriesIcon": "DragonBallsign",
			"file": "goku.ssf",
			"file_pub": "DAT236.ssf",
			"name": "Goku"
		},
		"waluigi": {
			"guid": "9cd4153e-080d-49a7-8be6-b415c735cab7",
			"seriesIcon": "MarioSymbol",
			"file": "waluigi.ssf",
			"file_pub": "DAT280.ssf",
			"name": "Waluigi"
		},
		"sonic": {
			"guid": "7b84c137-a56c-4db9-b154-154c9da71076",
			"seriesIcon": "sonic_symbol1",
			"file": "sonic.ssf",
			"file_pub": "DAT31.ssf",
			"name": "Sonic"
		},
		"jigglypuff": {
			"guid": "8fb252a6-b3fe-4572-8424-cc5f0f89f54e",
			"seriesIcon": "PokemonSymbol",
			"file": "jigglypuff.ssf",
			"file_pub": "DAT273.ssf",
			"name": "Jigglypuff"
		},
		"marth": {
			"guid": "9f391931-db1b-47a9-82b1-2c1d2560c6b7",
			"seriesIcon": "marth_seriesIcon",
			"file": "marth.ssf",
			"file_pub": "DAT29.ssf",
			"name": "Marth"
		},
		"wario": {
			"guid": "e98d84bd-4a2d-4a2a-8440-f38caa78b7d4",
			"seriesIcon": "warioseries",
			"file": "wario.ssf",
			"file_pub": "DAT169.ssf",
			"name": "Wario"
		},
		"mario": {
			"guid": "b4768513-c851-4f19-8c73-6f18e4f27b64",
			"seriesIcon": "MarioSymbol",
			"file": "mario.ssf",
			"file_pub": "DAT11.ssf",
			"name": "Mario"
		},
		"simon": {
			"guid": "0ff43725-06ab-4c74-9637-8467b9f3c286",
			"seriesIcon": "castlevania_icon",
			"file": "simon.ssf",
			"file_pub": "DAT38.ssf",
			"name": "Simon"
		},
		"luigi": {
			"guid": "e82c96ad-4f9d-4baa-b201-4e25cc248939",
			"seriesIcon": "MarioSymbol",
			"file": "luigi.ssf",
			"file_pub": "DAT224.ssf",
			"name": "Luigi"
		}
	},
	"menu": {
		"menu_group": {
			"guid": "5a9717f4-e126-44dd-927e-d4f4968541ad",
			"file": "menu_group.ssf",
			"file_pub": "DAT120.ssf"
		},
		"menu_disclaimer": {
			"guid": "13e6bb87-928a-400e-a857-16b548777c4e",
			"file": "menu_disclaimer.ssf",
			"file_pub": "DAT83.ssf"
		},
		"menu_backgrounds": {
			"guid": "bab2249e-c28f-42c8-926d-479ec9cbb65f",
			"file": "menu_backgrounds.ssf",
			"file_pub": "DAT199.ssf"
		},
		"menu_stages": {
			"guid": "ed368e28-7801-45a8-9d55-978f805007ab",
			"file": "menu_stages.ssf",
			"file_pub": "DAT124.ssf"
		},
		"menu_online": {
			"guid": "88b403ca-edd7-4aac-82b2-a716648f6d52",
			"file": "menu_online.ssf",
			"file_pub": "DAT84.ssf"
		},
		"menu_solo": {
			"guid": "d822b974-fe3e-4699-b508-07a2a86fa8b8",
			"file": "menu_solo.ssf",
			"file_pub": "DAT309.ssf"
		},
		"menu_main": {
			"guid": "8c8d5878-9630-4c56-9b0a-069eccb9fb5a",
			"file": "menu_main.ssf",
			"file_pub": "DAT262.ssf"
		},
		"menu_characters": {
			"guid": "cdf5fc26-48fa-4f20-9279-e01e4cea0fe2",
			"file": "menu_characters.ssf",
			"file_pub": "DAT66.ssf"
		},
		"menu_settings": {
			"guid": "7ba68690-a1ab-44e4-be76-f49e6b2204ba",
			"file": "menu_settings.ssf",
			"file_pub": "DAT157.ssf"
		}
	},
	"audio": {
		"audio": {
			"guid": "36277bd4-4917-42e3-afc8-be171dc8ba75",
			"file": "ssf2_audio.ssf",
			"file_pub": "DAT178.ssf"
		}
	},
	"metadata": {},
	"music": {
		"bgm_supermariobrostheme": {
			"guid": "7ea34969-b0cd-4030-b904-883be5e2e5d9",
			"file": "bgm_supermariobrostheme.ssf",
			"file_pub": "DAT232.ssf"
		},
		"bgm_superprincesspeach": {
			"guid": "80363dee-8562-4e3c-82aa-702d5f98ef5a",
			"file": "bgm_superprincesspeach.ssf",
			"file_pub": "DAT317.ssf"
		},
		"bgm_continue": {
			"guid": "cdaa906d-926a-450b-bc76-78b4c34a2e29",
			"file": "bgm_continue.ssf",
			"file_pub": "DAT53.ssf"
		},
		"bgm_vsridley": {
			"guid": "ecf17625-5b51-49d2-a71b-a82164539fcd",
			"file": "bgm_vsridley.ssf",
			"file_pub": "DAT86.ssf"
		},
		"bgm_liveandlearn": {
			"guid": "e2f67007-3b5d-4dfa-80a3-1152cde3b823",
			"file": "bgm_liveandlearn.ssf",
			"file_pub": "DAT68.ssf"
		},
		"bgm_ultimatebattle": {
			"guid": "4ce1d9be-3f21-4b1b-9733-b6ba8522188b",
			"file": "bgm_ultimatebattle.ssf",
			"file_pub": "DAT40.ssf"
		},
		"bgm_bubblyclouds": {
			"guid": "aee2e069-e666-4bb6-93db-dae9ceb1e303",
			"file": "bgm_bubblyclouds.ssf",
			"file_pub": "DAT193.ssf"
		},
		"bgm_deepdarkness": {
			"guid": "485448b5-502a-44e3-9a37-c51c80982d24",
			"file": "bgm_deepdarkness.ssf",
			"file_pub": "DAT284.ssf"
		},
		"bgm_spacejunkgalaxy": {
			"guid": "c521d680-59d4-4fc9-b568-bd781010f635",
			"file": "bgm_spacejunkgalaxy.ssf",
			"file_pub": "DAT12.ssf"
		},
		"bgm_ashleystheme": {
			"guid": "db7ac9d2-de3e-44e2-ac34-ee8487cfd84d",
			"file": "bgm_ashleystheme.ssf",
			"file_pub": "DAT241.ssf"
		},
		"bgm_overworld": {
			"guid": "85353487-66e7-4c40-b343-055d2acebc64",
			"file": "bgm_overworld.ssf",
			"file_pub": "DAT246.ssf"
		},
		"bgm_mmxmedley": {
			"guid": "68c9d4f6-16d6-4879-8506-946209257af1",
			"file": "bgm_mmxmedley.ssf",
			"file_pub": "DAT229.ssf"
		},
		"bgm_trainerbattle": {
			"guid": "eff1b863-cc96-4811-9bbd-7b01451df5cf",
			"file": "bgm_trainerbattle.ssf",
			"file_pub": "DAT189.ssf"
		},
		"bgm_luffyfierceattack": {
			"guid": "f5145b27-7157-4df4-99aa-dda2c2762818",
			"file": "bgm_luffyfierceattack.ssf",
			"file_pub": "DAT5.ssf"
		},
		"bgm_multimansmash": {
			"guid": "187bff0a-21b6-4123-b8bb-6276b10cf472",
			"file": "bgm_multimansmash.ssf",
			"file_pub": "DAT123.ssf"
		},
		"bgm_supermetroidmedley": {
			"guid": "6ebc4254-1343-4b07-9ae6-cb768a11607a",
			"file": "bgm_supermetroidmedley.ssf",
			"file_pub": "DAT307.ssf"
		},
		"bgm_gameover": {
			"guid": "049e15de-cb68-491f-a7b8-83c58f151fdc",
			"file": "bgm_gameover.ssf",
			"file_pub": "DAT212.ssf"
		},
		"bgm_sukapontheme": {
			"guid": "ff3502f6-67ab-4677-affd-cfb73977c8f0",
			"file": "bgm_sukapontheme.ssf",
			"file_pub": "DAT155.ssf"
		},
		"bgm_wariowareinc": {
			"guid": "6f391369-d4a3-4b87-bd6a-35f1036fbcb9",
			"file": "bgm_wariowareinc.ssf",
			"file_pub": "DAT205.ssf"
		},
		"bgm_rainbowroute": {
			"guid": "ffdc4752-7a01-4af3-99f9-631a58450ac6",
			"file": "bgm_rainbowroute.ssf",
			"file_pub": "DAT281.ssf"
		},
		"bgm_pacmaze": {
			"guid": "37c02741-8813-4dcc-a9bb-8fc813b55052",
			"file": "bgm_pacmaze.ssf",
			"file_pub": "DAT187.ssf"
		},
		"bgm_allergiagardens": {
			"guid": "e82369bf-8a42-4757-8944-2ea16a87344d",
			"file": "bgm_allergiagardens.ssf",
			"file_pub": "DAT275.ssf"
		},
		"bgm_metalcavern": {
			"guid": "dbdc4ff5-cc6e-40ea-80c1-705efcfb5350",
			"file": "bgm_metalcavern.ssf",
			"file_pub": "DAT196.ssf"
		},
		"bgm_casinopark": {
			"guid": "fb301a40-462e-49c1-9fd4-edd403b54353",
			"file": "bgm_casinopark.ssf",
			"file_pub": "DAT93.ssf"
		},
		"bgm_sectorzandtitania": {
			"guid": "4b9bcaba-c949-439d-a471-746835645478",
			"file": "bgm_sectorzandtitania.ssf",
			"file_pub": "DAT80.ssf"
		},
		"bgm_mutecity": {
			"guid": "835ac308-3209-4431-a0dd-4adc70b601bd",
			"file": "bgm_mutecity.ssf",
			"file_pub": "DAT140.ssf"
		},
		"bgm_homeruncontest": {
			"guid": "15c5499d-a8c2-4366-8359-be07cb278aed",
			"file": "bgm_homeruncontest.ssf",
			"file_pub": "DAT197.ssf"
		},
		"bgm_bowserscastle": {
			"guid": "0a53184d-9c41-4397-b1d2-68072d61e57e",
			"file": "bgm_bowserscastle.ssf",
			"file_pub": "DAT254.ssf"
		},
		"bgm_pokemoncitymedley": {
			"guid": "dffb3b4f-f672-418c-83bd-606904b680b5",
			"file": "bgm_pokemoncitymedley.ssf",
			"file_pub": "DAT58.ssf"
		},
		"bgm_ryutheme": {
			"guid": "aa1bd1fe-2a48-41fb-ab1a-164ec0e94613",
			"file": "bgm_ryutheme.ssf",
			"file_pub": "DAT239.ssf"
		},
		"bgm_theraisingfightingspirit": {
			"guid": "cc0f422d-d095-40e0-b842-0429ce5bdde1",
			"file": "bgm_theraisingfightingspirit.ssf",
			"file_pub": "DAT167.ssf"
		},
		"bgm_skyloft": {
			"guid": "dd3ddc85-69e3-43d3-9e4c-879618f17a98",
			"file": "bgm_skyloft.ssf",
			"file_pub": "DAT180.ssf"
		},
		"bgm_battlefield": {
			"guid": "e4ea4051-6ca9-4bc1-9820-42705cf03717",
			"file": "bgm_battlefield.ssf",
			"file_pub": "DAT103.ssf"
		},
		"bgm_gustygarden": {
			"guid": "141c64d0-3f78-44d2-b134-a78da5ae56b4",
			"file": "bgm_gustygarden.ssf",
			"file_pub": "DAT257.ssf"
		},
		"bgm_humoresqueofalittledog": {
			"guid": "27626de4-20f0-4511-bccb-7d3470635cb2",
			"file": "bgm_humoresqueofalittledog.ssf",
			"file_pub": "DAT9.ssf"
		},
		"bgm_wiisportstheme": {
			"guid": "d9af85bc-1f29-416a-a581-6bc6877a75d9",
			"file": "bgm_wiisportstheme.ssf",
			"file_pub": "DAT194.ssf"
		},
		"bgm_restareamelee": {
			"guid": "a51c73ec-bc80-43bd-8d0b-15309d7347a9",
			"file": "bgm_restareamelee.ssf",
			"file_pub": "DAT159.ssf"
		},
		"bgm_titlegoldensun": {
			"guid": "804bd94e-beb0-11e6-a4a6-cec0c932ce01",
			"file": "bgm_titlegoldensun.ssf",
			"file_pub": "DAT217.ssf"
		},
		"bgm_corneria2": {
			"guid": "f9166464-6854-4e1e-b936-4cb526455a96",
			"file": "bgm_corneria2.ssf",
			"file_pub": "DAT326.ssf"
		},
		"bgm_sacredmoon": {
			"guid": "57458ae0-7733-40a0-9546-801a69ead163",
			"file": "bgm_sacredmoon.ssf",
			"file_pub": "DAT270.ssf"
		},
		"bgm_smb2caves": {
			"guid": "9fb56e27-6489-4a52-8700-7448682dd731",
			"file": "bgm_smb2caves.ssf",
			"file_pub": "DAT318.ssf"
		},
		"bgm_teamrockethideout": {
			"guid": "88f876cb-1f8c-41ba-9e2a-4c444169c075",
			"file": "bgm_teamrockethideout.ssf",
			"file_pub": "DAT111.ssf"
		},
		"bgm_pacmantheme": {
			"guid": "64b2ce8a-1516-4dad-8b3e-0b17fa7c544c",
			"file": "bgm_pacmantheme.ssf",
			"file_pub": "DAT313.ssf"
		},
		"bgm_skullfortress": {
			"guid": "607bc454-2f5d-45d3-8933-876a3d43d1c2",
			"file": "bgm_skullfortress.ssf",
			"file_pub": "DAT18.ssf"
		},
		"bgm_songofocarina": {
			"guid": "46b6a306-2eb3-4122-8b1b-c02686f88a25",
			"file": "bgm_songofocarina.ssf",
			"file_pub": "DAT165.ssf"
		},
		"bgm_deathmountain": {
			"guid": "b014b45d-0f3b-4958-96e9-b3a0996b8e2a",
			"file": "bgm_deathmountain.ssf",
			"file_pub": "DAT152.ssf"
		},
		"bgm_sizeofthemoon": {
			"guid": "be779bc7-05a6-47f0-a345-b23fade4e20f",
			"file": "bgm_sizeofthemoon.ssf",
			"file_pub": "DAT144.ssf"
		},
		"bgm_magnus": {
			"guid": "5f79a78e-bab3-402b-a737-e12a42db72d5",
			"file": "bgm_magnus.ssf",
			"file_pub": "DAT20.ssf"
		},
		"bgm_zeldamaintheme": {
			"guid": "8b7f8457-6e5c-4748-b725-5f2f60cd368a",
			"file": "bgm_zeldamaintheme.ssf",
			"file_pub": "DAT209.ssf"
		},
		"bgm_gohansangertheme": {
			"guid": "03c41a2a-a110-4f35-9bc7-3a4a8f1c1631",
			"file": "bgm_gohansangertheme.ssf",
			"file_pub": "DAT190.ssf"
		},
		"bgm_yoshisstory": {
			"guid": "59e07b08-6bf4-4948-88ce-65ae2918c61b",
			"file": "bgm_yoshisstory.ssf",
			"file_pub": "DAT100.ssf"
		},
		"bgm_finaldestination": {
			"guid": "e07ea658-b830-4954-92d5-2845fe8b5881",
			"file": "bgm_finaldestination.ssf",
			"file_pub": "DAT132.ssf"
		},
		"bgm_bobombbattlefield": {
			"guid": "6a053dbb-14ca-4695-a7c9-5e550aa4a7f2",
			"file": "bgm_bobombbattlefield.ssf",
			"file_pub": "DAT291.ssf"
		},
		"bgm_proofofblood": {
			"guid": "bd27a723-6311-4ad1-b45c-c6927de3c131",
			"file": "bgm_proofofblood.ssf",
			"file_pub": "DAT279.ssf"
		},
		"bgm_djkk": {
			"guid": "2974ce3a-44de-415f-bc8d-d434f6fe0da2",
			"file": "bgm_djkk.ssf",
			"file_pub": "DAT107.ssf"
		},
		"bgm_battleff1": {
			"guid": "5b321ef3-adea-47b1-8ef3-5948ddef0b18",
			"file": "bgm_battleff1.ssf",
			"file_pub": "DAT104.ssf"
		},
		"bgm_hammerbros": {
			"guid": "e1995438-800b-4e72-8614-e8a11b9ffd8f",
			"file": "bgm_hammerbros.ssf",
			"file_pub": "DAT319.ssf"
		},
		"bgm_porkymeansbusiness": {
			"guid": "7369c250-4d95-4262-82ca-5c97af54c25c",
			"file": "bgm_porkymeansbusiness.ssf",
			"file_pub": "DAT172.ssf"
		},
		"bgm_maptheme": {
			"guid": "4174076e-3a59-48e2-9d72-64278bc3bf36",
			"file": "bgm_maptheme.ssf",
			"file_pub": "DAT328.ssf"
		},
		"bgm_wind": {
			"guid": "6a42925c-8378-4d14-85ed-d4f9fc44b513",
			"file": "bgm_wind.ssf",
			"file_pub": "DAT218.ssf"
		},
		"bgm_bowsersrampage": {
			"guid": "7b4bbeec-fbf3-4228-b8e3-59e2d1ca3d39",
			"file": "bgm_bowsersrampage.ssf",
			"file_pub": "DAT119.ssf"
		},
		"bgm_thefinalbattle": {
			"guid": "5713c4cc-9c55-41e5-9d48-93c947cd64b7",
			"file": "bgm_thefinalbattle.ssf",
			"file_pub": "DAT261.ssf"
		},
		"bgm_bigblue": {
			"guid": "6167e05b-66b8-4a7d-89bf-6fcc70592462",
			"file": "bgm_bigblue.ssf",
			"file_pub": "DAT46.ssf"
		},
		"bgm_characterbtt": {
			"guid": "668f9a8f-1e47-4a20-8816-4b5d5723e234",
			"file": "bgm_characterbtt.ssf",
			"file_pub": "DAT315.ssf"
		},
		"bgm_balladofthegoddess": {
			"guid": "396e2299-6671-493f-8604-04a70ca8b534",
			"file": "bgm_balladofthegoddess.ssf",
			"file_pub": "DAT305.ssf"
		},
		"bgm_dbzfighttheme": {
			"guid": "87c9720f-d8ed-4ca7-8e2d-7724e3add219",
			"file": "bgm_dbzfighttheme.ssf",
			"file_pub": "DAT75.ssf"
		},
		"bgm_darknessoftheunknown": {
			"guid": "9aa5b76d-7cfd-4e51-b9f1-e8e65cc922d9",
			"file": "bgm_darknessoftheunknown.ssf",
			"file_pub": "DAT33.ssf"
		},
		"bgm_worldmap": {
			"guid": "3965b058-4d71-49ab-b7d2-e84824d93622",
			"file": "bgm_worldmap.ssf",
			"file_pub": "DAT292.ssf"
		},
		"bgm_snakeychantey": {
			"guid": "12a5a7e0-01ec-42f1-ab7c-c17861a34dd9",
			"file": "bgm_snakeychantey.ssf",
			"file_pub": "DAT299.ssf"
		},
		"bgm_breakthetargets": {
			"guid": "6bb733bd-4f3d-4253-a1ba-3ec1fdb1816a",
			"file": "bgm_breakthetargets.ssf",
			"file_pub": "DAT28.ssf"
		},
		"bgm_pollyanna": {
			"guid": "0cb9dd93-2167-4c8c-9a54-eadc8f90c355",
			"file": "bgm_pollyanna.ssf",
			"file_pub": "DAT138.ssf"
		},
		"bgm_skycanyonzone": {
			"guid": "b015f01e-a0e3-11e6-80f5-76304dec7eb7",
			"file": "bgm_skycanyonzone.ssf",
			"file_pub": "DAT175.ssf"
		},
		"bgm_lakeofrage": {
			"guid": "b9fd85b7-04bb-40c3-a794-2bf9b5cd9fe7",
			"file": "bgm_lakeofrage.ssf",
			"file_pub": "DAT215.ssf"
		},
		"bgm_kkcruisin": {
			"guid": "0d2b629b-9dba-4001-b644-d9fe7b0f0f41",
			"file": "bgm_kkcruisin.ssf",
			"file_pub": "DAT301.ssf"
		},
		"bgm_majorasmaskmedley": {
			"guid": "e4bedf9d-fc01-4d83-8dd8-b00ecb5acf2a",
			"file": "bgm_majorasmaskmedley.ssf",
			"file_pub": "DAT130.ssf"
		},
		"bgm_chasingadream": {
			"guid": "c543e8a6-48b3-4693-8853-f0d4e8cd218e",
			"file": "bgm_chasingadream.ssf",
			"file_pub": "DAT34.ssf"
		},
		"bgm_kingdom2": {
			"guid": "d4736373-a3a0-48f1-8d1b-de005eb1a45c",
			"file": "bgm_kingdom2.ssf",
			"file_pub": "DAT290.ssf"
		},
		"bgm_kentheme": {
			"guid": "c3ec6d4f-6f3d-4a44-8988-5b8e7b0ec7d7",
			"file": "bgm_kentheme.ssf",
			"file_pub": "DAT213.ssf"
		},
		"bgm_corneria": {
			"guid": "d7638867-c951-4787-bb0e-c1768a629b1e",
			"file": "bgm_corneria.ssf",
			"file_pub": "DAT260.ssf"
		},
		"bgm_restarea": {
			"guid": "d330794c-383a-4a9d-9ba8-6d3a271fd35c",
			"file": "bgm_restarea.ssf",
			"file_pub": "DAT173.ssf"
		},
		"bgm_lowernorfair": {
			"guid": "bd101399-17a8-4e0c-8cc2-1acf49334697",
			"file": "bgm_lowernorfair.ssf",
			"file_pub": "DAT142.ssf"
		},
		"bgm_polygonzone": {
			"guid": "f697a7d4-3528-494a-a324-2dd38d4ae059",
			"file": "bgm_polygonzone.ssf",
			"file_pub": "DAT300.ssf"
		},
		"bgm_bombermanstheme": {
			"guid": "ead2937c-6ba9-4201-870d-6a1bbce7dd30",
			"file": "bgm_bombermanstheme.ssf",
			"file_pub": "DAT76.ssf"
		},
		"bgm_greengreens": {
			"guid": "a2b2dc86-ce95-4e49-807b-97b6b4a115e7",
			"file": "bgm_greengreens.ssf",
			"file_pub": "DAT311.ssf"
		},
		"bgm_worldtournament": {
			"guid": "7241b4be-c2e5-449f-b7c6-43ce96ae6864",
			"file": "bgm_worldtournament.ssf",
			"file_pub": "DAT3.ssf"
		},
		"bgm_menu": {
			"guid": "b88fa74f-7865-402f-9a9f-3eeaadce8f21",
			"file": "bgm_menu.ssf",
			"file_pub": "DAT105.ssf"
		},
		"bgm_cruelsmash": {
			"guid": "9e48eb54-1009-479f-8977-03ef7aff592f",
			"file": "bgm_cruelsmash.ssf",
			"file_pub": "DAT228.ssf"
		},
		"bgm_shybutdeadly": {
			"guid": "e7f60f3e-eef8-41ea-8a7c-32b4b1815da1",
			"file": "bgm_shybutdeadly.ssf",
			"file_pub": "DAT188.ssf"
		},
		"bgm_skypillar": {
			"guid": "e508980c-1e85-4f66-b015-4e8ae98da307",
			"file": "bgm_skypillar.ssf",
			"file_pub": "DAT245.ssf"
		},
		"bgm_smb2overworld": {
			"guid": "a907c80e-9382-4a74-b397-c1d438e6253b",
			"file": "bgm_smb2overworld.ssf",
			"file_pub": "DAT59.ssf"
		},
		"bgm_ghostlygarden": {
			"guid": "c1cd53c7-c8d0-4d66-a07f-6434eaee240b",
			"file": "bgm_ghostlygarden.ssf",
			"file_pub": "DAT293.ssf"
		},
		"bgm_fireemblemtheme": {
			"guid": "4e239f89-986a-4474-b008-205fa6c9dde5",
			"file": "bgm_fireemblemtheme.ssf",
			"file_pub": "DAT54.ssf"
		},
		"bgm_pokemonmaintheme": {
			"guid": "88d32937-8dc6-4648-8ce6-cd77a7554460",
			"file": "bgm_pokemonmaintheme.ssf",
			"file_pub": "DAT87.ssf"
		},
		"bgm_rayman2theme": {
			"guid": "885b6433-04f8-4d08-869f-129fd869edc1",
			"file": "bgm_rayman2theme.ssf",
			"file_pub": "DAT147.ssf"
		},
		"bgm_monstrousturtles": {
			"guid": "8a76ecdc-d645-4d2f-b6b5-4c9244b046cf",
			"file": "bgm_monstrousturtles.ssf",
			"file_pub": "DAT238.ssf"
		},
		"bgm_stormeagle": {
			"guid": "b13337ac-a800-431d-a2c4-e93e4f39497e",
			"file": "bgm_stormeagle.ssf",
			"file_pub": "DAT310.ssf"
		},
		"bgm_speedeaters": {
			"guid": "a567c8f0-a59c-4cee-bcbb-49a75c636c72",
			"file": "bgm_speedeaters.ssf",
			"file_pub": "DAT62.ssf"
		},
		"bgm_crystalsmash": {
			"guid": "7f7483c0-fe4d-4d7b-9b17-819cbc3eaecf",
			"file": "bgm_crystalsmash.ssf",
			"file_pub": "DAT128.ssf"
		},
		"bgm_metalbros": {
			"guid": "c3583e0e-5153-4eae-95c7-2c87fedb397d",
			"file": "bgm_metalbros.ssf",
			"file_pub": "DAT222.ssf"
		},
		"bgm_fatalize": {
			"guid": "cb769a22-4469-4646-b2c5-2053eb4c0f2f",
			"file": "bgm_fatalize.ssf",
			"file_pub": "DAT8.ssf"
		},
		"bgm_skysanctuaryzone": {
			"guid": "f0c5f8bc-c921-45c4-b561-665f1e04b3ce",
			"file": "bgm_skysanctuaryzone.ssf",
			"file_pub": "DAT146.ssf"
		},
		"bgm_huecomundo": {
			"guid": "fccbc307-3207-40f9-9de6-4ff985afc6e3",
			"file": "bgm_huecomundo.ssf",
			"file_pub": "DAT182.ssf"
		},
		"bgm_ninjamedley": {
			"guid": "7b668913-a224-48cf-b423-6c6ea10ffe2e",
			"file": "bgm_ninjamedley.ssf",
			"file_pub": "DAT137.ssf"
		},
		"bgm_flashinthedarkgalaxyfantasy": {
			"guid": "cdd781cd-617f-4c96-a236-711bd02a7977",
			"file": "bgm_flashinthedarkgalaxyfantasy.ssf",
			"file_pub": "DAT247.ssf"
		},
		"bgm_kingdom": {
			"guid": "b5dd8ff9-2f8e-4f59-82cd-1bb2f3797574",
			"file": "bgm_kingdom.ssf",
			"file_pub": "DAT233.ssf"
		},
		"bgm_casinonightzone": {
			"guid": "98575dfb-74c4-45b2-b269-fcb15449d6f4",
			"file": "bgm_casinonightzone.ssf",
			"file_pub": "DAT323.ssf"
		},
		"bgm_targettest": {
			"guid": "34aeb006-ec50-41eb-ae31-225dabce9eb9",
			"file": "bgm_targettest.ssf",
			"file_pub": "DAT125.ssf"
		},
		"bgm_athletictheme": {
			"guid": "723e9a21-aa3a-4a60-be8c-e313c1412f0a",
			"file": "bgm_athletictheme.ssf",
			"file_pub": "DAT168.ssf"
		},
		"bgm_restareasmash4": {
			"guid": "7adeab4d-77ad-4e47-b110-3e0c9fb6e932",
			"file": "bgm_restareasmash4.ssf",
			"file_pub": "DAT206.ssf"
		},
		"bgm_greenhillzone": {
			"guid": "c7eedc50-24d9-45cb-9938-8feacecf210d",
			"file": "bgm_greenhillzone.ssf",
			"file_pub": "DAT223.ssf"
		},
		"bgm_fourside": {
			"guid": "f807204d-808f-4c2e-8e83-f1151e124e8e",
			"file": "bgm_fourside.ssf",
			"file_pub": "DAT283.ssf"
		},
		"bgm_yoshisisland64": {
			"guid": "820039e1-4827-41d9-82b2-126246481d38",
			"file": "bgm_yoshisisland64.ssf",
			"file_pub": "DAT81.ssf"
		},
		"bgm_temple": {
			"guid": "e492f800-8368-4d3b-8754-5aaf56da4bc8",
			"file": "bgm_temple.ssf",
			"file_pub": "DAT248.ssf"
		},
		"bgm_vsmasterhand": {
			"guid": "a438132d-7262-450d-9255-c16f90901e0e",
			"file": "bgm_vsmasterhand.ssf",
			"file_pub": "DAT184.ssf"
		},
		"bgm_steeldiver": {
			"guid": "74468569-6ca0-42d0-9018-b05b0980073c",
			"file": "bgm_steeldiver.ssf",
			"file_pub": "DAT150.ssf"
		},
		"bgm_masterhandcomplete": {
			"guid": "dc6893f0-16d0-4abe-8fb3-f22fb8cbdb48",
			"file": "bgm_masterhandcomplete.ssf",
			"file_pub": "DAT203.ssf"
		},
		"bgm_tosmedley": {
			"guid": "94c5a822-89b0-466e-bc0d-2906e69faf55",
			"file": "bgm_tosmedley.ssf",
			"file_pub": "DAT174.ssf"
		},
		"bgm_menunesmix": {
			"guid": "47937696-d7b5-4248-9efc-19c2df131331",
			"file": "bgm_menunesmix.ssf",
			"file_pub": "DAT50.ssf"
		},
		"bgm_comrades": {
			"guid": "5f8179b3-0b25-476f-bce1-23d8259b7686",
			"file": "bgm_comrades.ssf",
			"file_pub": "DAT94.ssf"
		},
		"bgm_krazoapalace": {
			"guid": "e77e68d1-b19e-40b0-aa14-c6d9b27377c9",
			"file": "bgm_krazoapalace.ssf",
			"file_pub": "DAT7.ssf"
		},
		"bgm_kraidslair": {
			"guid": "70e72894-0d62-45b5-8b87-003bdc0ef3a5",
			"file": "bgm_kraidslair.ssf",
			"file_pub": "DAT117.ssf"
		},
		"bgm_skytower": {
			"guid": "5eb5fc2f-74cf-4750-8cb8-1014d9da59a5",
			"file": "bgm_skytower.ssf",
			"file_pub": "DAT256.ssf"
		},
		"bgm_butterbuilding": {
			"guid": "c63f0dbe-76d1-45d0-9bb5-7c01edf2adb7",
			"file": "bgm_butterbuilding.ssf",
			"file_pub": "DAT297.ssf"
		},
		"bgm_polygonbattle": {
			"guid": "7acf714d-f2eb-46cf-8ec5-911971e1cda5",
			"file": "bgm_polygonbattle.ssf",
			"file_pub": "DAT110.ssf"
		},
		"bgm_gangplankgalleon": {
			"guid": "47641528-5f3b-49a8-a75b-c72b6001858a",
			"file": "bgm_gangplankgalleon.ssf",
			"file_pub": "DAT321.ssf"
		},
		"bgm_urbanchampion": {
			"guid": "f855ec63-26db-4947-b79c-c953592c7385",
			"file": "bgm_urbanchampion.ssf",
			"file_pub": "DAT136.ssf"
		},
		"bgm_rowdyrumble": {
			"guid": "75bf8d89-53c6-4ec8-a87f-16c53b69b37f",
			"file": "bgm_rowdyrumble.ssf",
			"file_pub": "DAT35.ssf"
		},
		"bgm_championbattle": {
			"guid": "34ca34f7-caa9-41fd-888f-323aa861fd43",
			"file": "bgm_championbattle.ssf",
			"file_pub": "DAT208.ssf"
		},
		"bgm_funkyzone": {
			"guid": "560156e5-3c23-4e6f-8867-990b00c65cf9",
			"file": "bgm_funkyzone.ssf",
			"file_pub": "DAT253.ssf"
		},
		"bgm_superprincesspeach2": {
			"guid": "870d780e-a0e8-11e6-80f5-76304dec7eb7",
			"file": "bgm_superprincesspeach2.ssf",
			"file_pub": "DAT237.ssf"
		},
		"bgm_restareabrawl": {
			"guid": "ccf6d7a6-c774-44c5-bd9b-4455f4c289fd",
			"file": "bgm_restareabrawl.ssf",
			"file_pub": "DAT121.ssf"
		},
		"bgm_miichannel": {
			"guid": "711b93e5-e9af-483d-81d9-651362588c88",
			"file": "bgm_miichannel.ssf",
			"file_pub": "DAT303.ssf"
		},
		"bgm_withinthegiant": {
			"guid": "6e84144d-da4f-45d0-81d2-599d0aeccb64",
			"file": "bgm_withinthegiant.ssf",
			"file_pub": "DAT258.ssf"
		},
		"bgm_castlevaniaretromedley": {
			"guid": "380767f6-42aa-4147-8c3c-114953218cd1",
			"file": "bgm_castlevaniaretromedley.ssf",
			"file_pub": "DAT179.ssf"
		},
		"bgm_meteo": {
			"guid": "778b6b3b-3d22-4053-ba37-4d69aebd9ce4",
			"file": "bgm_meteo.ssf",
			"file_pub": "DAT200.ssf"
		},
		"bgm_ontheprecipiceofdefeat": {
			"guid": "ca4b2c21-6275-4eff-bcd4-b4bd3d2b984f",
			"file": "bgm_ontheprecipiceofdefeat.ssf",
			"file_pub": "DAT6.ssf"
		},
		"bgm_palmtreeparadise": {
			"guid": "9743a4f2-d4db-4e93-b87e-aeb2a5c1ace8",
			"file": "bgm_palmtreeparadise.ssf",
			"file_pub": "DAT139.ssf"
		},
		"bgm_breakthetargets2": {
			"guid": "e90108f2-cc1f-4a64-8915-a9f6791620f0",
			"file": "bgm_breakthetargets2.ssf",
			"file_pub": "DAT95.ssf"
		},
		"bgm_flatzone2K19": {
			"guid": "d777d1f1-c737-40ad-ae66-4166cd29eb8b",
			"file": "bgm_flatzone2K19.ssf",
			"file_pub": "DAT330.ssf"
		},
		"bgm_weare": {
			"guid": "2955e76b-1628-4158-b28b-ea132374b536",
			"file": "bgm_weare.ssf",
			"file_pub": "DAT63.ssf"
		},
		"bgm_hurryupshakeit": {
			"guid": "665a4712-5e73-4080-82f6-a649da8515c1",
			"file": "bgm_hurryupshakeit.ssf",
			"file_pub": "DAT231.ssf"
		},
		"bgm_dkislandswing": {
			"guid": "c6f1fd9c-f80c-4d17-bad7-12dea6d57c53",
			"file": "bgm_dkislandswing.ssf",
			"file_pub": "DAT149.ssf"
		},
		"bgm_songofstorms": {
			"guid": "5270a92e-6248-450f-8e7b-2d84bd16c35a",
			"file": "bgm_songofstorms.ssf",
			"file_pub": "DAT211.ssf"
		},
		"bgm_isaacbattletheme": {
			"guid": "6b874fce-beb1-11e6-a4a6-cec0c932ce01",
			"file": "bgm_isaacbattletheme.ssf",
			"file_pub": "DAT240.ssf"
		},
		"bgm_dontthinktwice": {
			"guid": "c182a995-67ea-4272-8622-d03c581ca02f",
			"file": "bgm_dontthinktwice.ssf",
			"file_pub": "DAT287.ssf"
		},
		"bgm_waitingroom": {
			"guid": "9aa6d69a-b701-43e1-aeef-880afbde4fc3",
			"file": "bgm_waitingroom.ssf",
			"file_pub": "DAT226.ssf"
		},
		"bgm_shackledsnowhorn": {
			"guid": "56d378b6-0ca2-4d38-96e5-261c8af50ffb",
			"file": "bgm_shackledsnowhorn.ssf",
			"file_pub": "DAT331.ssf"
		},
		"bgm_alcatraz": {
			"guid": "0e99b980-f7c2-466b-9eb7-8ec1566dff8a",
			"file": "bgm_alcatraz.ssf",
			"file_pub": "DAT98.ssf"
		},
		"bgm_lakituplains": {
			"guid": "92bb85b5-01d4-4281-937f-f878eb7e1e57",
			"file": "bgm_lakituplains.ssf",
			"file_pub": "DAT48.ssf"
		},
		"bgm_thewoodsoflight": {
			"guid": "ef604a91-4d3b-4fb2-a1da-8fb836c5c4e4",
			"file": "bgm_thewoodsoflight.ssf",
			"file_pub": "DAT219.ssf"
		},
		"bgm_palaceinthesky": {
			"guid": "9deb85c2-a53e-46fd-8c70-86c87ab52ed4",
			"file": "bgm_palaceinthesky.ssf",
			"file_pub": "DAT234.ssf"
		},
		"bgm_hihihi": {
			"guid": "b83ccfe0-b93c-4b95-851d-38c1ee170969",
			"file": "bgm_hihihi.ssf",
			"file_pub": "DAT333.ssf"
		},
		"bgm_mescreamingfor26minutes": {
			"guid": "08aed21b-ba21-9ace-b4ad-048923987abb",
			"file": "bgm_screaming.ssf"
		},
		"bgm_darkworld": {
			"guid": "b000ec42-61d9-40ee-800b-b7841039866d",
			"file": "bgm_darkworld.ssf",
			"file_pub": "DAT225.ssf"
		},
		"bgm_starman": {
			"guid": "dc0cabf6-6e72-4b57-a5de-48cb76c852fc",
			"file": "bgm_starman.ssf",
			"file_pub": "DAT114.ssf"
		},
		"bgm_complete": {
			"guid": "66e9f89b-82bb-403d-bdf5-a4499e97cbd6",
			"file": "bgm_complete.ssf",
			"file_pub": "DAT162.ssf"
		},
		"bgm_desk": {
			"guid": "53c85d1c-ed52-4cc0-bf36-d94c515fd3bc",
			"file": "bgm_desk.ssf",
			"file_pub": "DAT26.ssf"
		},
		"bgm_brambleblast": {
			"guid": "96ee6a40-8559-41b9-bb21-0c037bb94000",
			"file": "bgm_brambleblast.ssf",
			"file_pub": "DAT251.ssf"
		},
		"bgm_donutlifts": {
			"guid": "07f2b62f-53bb-435d-a383-70c9b996e933",
			"file": "bgm_donutlifts.ssf",
			"file_pub": "DAT74.ssf"
		},
		"bgm_dreamland": {
			"guid": "9a552103-e141-4a77-b5e2-79c9f0ccc36a",
			"file": "bgm_dreamland.ssf",
			"file_pub": "DAT57.ssf"
		},
		"bgm_chaosshrine": {
			"guid": "e8858d9c-26f6-49c5-9b1a-a55515201213",
			"file": "bgm_chaosshrine.ssf",
			"file_pub": "DAT266.ssf"
		}
	},
	"extra": {
		"ssf2intro_v8": {
			"guid": "b33bb564-74b7-4476-b9ee-d0aa83cdd5a2",
			"file": "ssf2intro_v8.ssf",
			"file_pub": "DAT127.ssf"
		},
		"ssf2intro_v9": {
			"guid": "1a859791-8c60-44d8-9c2c-b401ce0d951e",
			"file": "ssf2intro_v9.ssf",
			"file_pub": "DAT25.ssf"
		}
	},
	"misc": {
		"assists": {
			"guid": "7908eb06-ab39-4abe-8d9b-5a9602747269",
			"file": "assists.ssf",
			"file_pub": "DAT73.ssf"
		},
		"items": {
			"guid": "d4d0e957-4a4e-485e-9522-ffa252ad36b6",
			"file": "items.ssf",
			"file_pub": "DAT79.ssf"
		},
		"ssf2intro_beta": {
			"guid": "5bfb6b3e-bbd0-4232-a8a6-5f66ba572812",
			"file": "ssf2intro_beta.ssf",
			"file_pub": "DAT102.ssf"
		},
		"mappings": {
			"guid": "d21861d9-0d6b-4ae7-a636-539fcd1d25c8",
			"file": "mappings.ssf",
			"file_pub": "DAT166.ssf"
		},
		"enemies": {
			"guid": "16e3aafc-fe9f-4689-97e5-5c4268507bd3",
			"file": "enemies.ssf",
			"file_pub": "DAT294.ssf"
		},
		"misc2": {
			"guid": "c6919736-6be3-46f0-b815-73abae7e9fc3",
			"file": "misc2.ssf",
			"file_pub": "DAT143.ssf"
		},
		"effects": {
			"guid": "da5cf085-2ff6-4915-8362-7ca7192725f9",
			"file": "effects.ssf",
			"file_pub": "DAT4.ssf"
		},
		"misc": {
			"guid": "e8bd4437-5786-4645-9ce8-399c99ec71c9",
			"file": "misc.ssf",
			"file_pub": "DAT135.ssf"
		},
		"pokemon": {
			"guid": "696a2375-3a1d-4569-ae4c-9af3b0a1dd71",
			"file": "pokemon.ssf",
			"file_pub": "DAT286.ssf"
		}
	},
	"modes": {
		"event_mode": {
			"guid": "d56c1d3c-f0dd-4c56-9dc4-6afe72a0de39",
			"file": "event_mode.swf",
			"file_pub": "DAT30.ssf"
		},
		"homeruncontest_mode": {
			"guid": "95a6da48-fef1-4400-bc78-9f1853bfd8da",
			"file": "homeruncontest_mode.ssf",
			"file_pub": "DAT185.ssf"
		},
		"multiman_mode": {
			"guid": "5b874992-cff0-4049-9f2c-8583a604887a",
			"file": "multiman_mode.ssf",
			"file_pub": "DAT70.ssf"
		},
		"crystals_mode": {
			"guid": "8b5a0c01-a486-4481-b67b-5144923a1176",
			"file": "crystals_mode.ssf",
			"file_pub": "DAT116.ssf"
		},
		"targets_mode": {
			"guid": "3610549e-ef23-462c-9f54-5f9efeff5f75",
			"file": "targets_mode.ssf",
			"file_pub": "DAT308.ssf"
		},
		"arena_mode": {
			"guid": "c1f1cc75-5928-4fff-b983-3def600b76fb",
			"file": "arena_mode.ssf",
			"file_pub": "DAT145.ssf"
		},
		"classic_mode": {
			"guid": "4abc0336-07ea-4959-9c1a-f98ffdc4c465",
			"file": "classic_mode.ssf",
			"file_pub": "DAT320.ssf"
		},
		"allstar_mode": {
			"guid": "c3f82a2e-569b-428a-a918-ceb3bfccc459",
			"file": "allstar_mode.ssf",
			"file_pub": "DAT10.ssf"
		}
	},
	"stage": {
		"clocktown": {
			"guid": "eb13a025-dead-4fa1-9344-6904d7556bea",
			"file": "clocktown.ssf",
			"file_pub": "DAT252.ssf",
			"name": "Clock Town"
		},
		"targettest_link": {
			"guid": "e4cde24b-f8a5-4b72-a622-a888641dc945",
			"file": "targettest_link.ssf",
			"file_pub": "DAT153.ssf"
		},
		"venuslighthouse": {
			"guid": "48b680ca-7a0c-432e-a79c-68daa82532ff",
			"file": "venuslighthouse.ssf",
			"file_pub": "DAT316.ssf",
			"name": "Venus Lighthouse"
		},
		"skullfortress": {
			"guid": "efaaa24f-942b-4031-bb52-74349799a3b4",
			"file": "skullfortress.ssf",
			"file_pub": "DAT325.ssf",
			"name": "Skull Fortress"
		},
		"butterbuilding": {
			"guid": "ee63e5ac-8f30-4d49-bad7-37509c6d50be",
			"file": "butterbuilding.ssf",
			"file_pub": "DAT17.ssf",
			"name": "Butter Building"
		},
		"meteovoyage": {
			"guid": "b811c48b-97de-4827-b432-414d4baac2f6",
			"file": "meteovoyage.ssf",
			"file_pub": "DAT24.ssf",
			"name": "Meteo Campaigns"
		},
		"crystalsmash2": {
			"guid": "bf12a1e6-03b8-4818-9802-6b54b1c816fe",
			"file": "crystalsmash2.ssf",
			"file_pub": "DAT1.ssf",
			"name": "Crystal Smash Stage 2"
		},
		"targettest2": {
			"guid": "ad01f0cd-9dd7-46c0-9c2f-a4ed0125adc6",
			"file": "targettest2.ssf",
			"file_pub": "DAT285.ssf"
		},
		"targettest_captainfalcon": {
			"guid": "2cec1040-ba2d-4231-af83-c43a55c6938d",
			"file": "targettest_captainfalcon.ssf",
			"file_pub": "DAT161.ssf"
		},
		"targettest_bandanadee": {
			"guid": "36704879-5665-46c9-ab1d-36a33498aa89",
			"file": "targettest_bandanadee.ssf",
			"file_pub": "DAT177.ssf"
		},
		"dreamland": {
			"guid": "7fbc6488-e6d7-420c-94fa-e244635c90a8",
			"file": "dreamland.ssf",
			"file_pub": "DAT207.ssf",
			"name": "Dream Land"
		},
		"casinonightzone": {
			"guid": "51484658-3913-4eef-afdd-15dbcc01bdda",
			"file": "casinonightzone.ssf",
			"file_pub": "DAT22.ssf",
			"name": "Casino Night Zone"
		},
		"locked1": {},
		"junglehijinx": {
			"guid": "c19a717f-eeb7-46eb-8672-a4b5cda2f616",
			"file": "junglehijinx.ssf",
			"file_pub": "DAT282.ssf",
			"name": "Jungle Hijinx"
		},
		"chaosshrine": {
			"guid": "9669b85c-fa35-443a-8cf9-7cddb9bf8e52",
			"file": "chaosshrine.ssf",
			"file_pub": "DAT106.ssf",
			"name": "Chaos Shrine"
		},
		"krazoapalace": {
			"guid": "5a4326cb-dcbc-4171-bdba-d08cd451ff62",
			"file": "krazoapalace.ssf",
			"file_pub": "DAT271.ssf",
			"name": "Krazoa Palace"
		},
		"hyruletemple": {
			"guid": "3b853a71-ee2b-43ce-8383-10db58ba801c",
			"file": "hyruletemple.ssf",
			"file_pub": "DAT267.ssf",
			"name": "Temple"
		},
		"thousandsunny": {
			"guid": "42b4fd02-9624-4c47-8b37-2f576cc4c048",
			"file": "thousandsunny.ssf",
			"file_pub": "DAT216.ssf",
			"name": "Thousand Sunny"
		},
		"galaxytours": {
			"guid": "f1eb7f31-1535-4d79-9419-0e904de27eaf",
			"file": "galaxytours.ssf",
			"file_pub": "DAT263.ssf",
			"name": "Galaxy Tours"
		},
		"homeruncontest2": {
			"guid": "28cf731f-836d-4181-821d-67f9eda63504",
			"file": "homeruncontest2.ssf",
			"file_pub": "DAT298.ssf"
		},
		"targettest_pikachu": {
			"guid": "b4656fee-7ff9-47bc-ab1a-4ee99bd7b5de",
			"file": "targettest_pikachu.ssf",
			"file_pub": "DAT235.ssf"
		},
		"devilsmachine": {
			"guid": "b703fe50-cb1f-48fe-95d4-e23e95e75b25",
			"file": "devilsmachine.ssf",
			"file_pub": "DAT272.ssf",
			"name": "Devil's Machine"
		},
		"skysanctuary": {
			"guid": "85462325-8e72-46fb-9807-93c165d2643c",
			"file": "skysanctuary.ssf",
			"file_pub": "DAT23.ssf",
			"name": "Sky Sanctuary Zone"
		},
		"rainbowroute": {
			"guid": "c02c1532-40ba-4e2a-8a7a-3dad26f05b87",
			"file": "rainbowroute.ssf",
			"file_pub": "DAT27.ssf",
			"name": "Rainbow Route"
		},
		"targettest_jigglypuff": {
			"guid": "cc48ac81-8c3c-4710-98ea-953e51f49ee7",
			"file": "targettest_jigglypuff.ssf",
			"file_pub": "DAT221.ssf"
		},
		"yoshisisland": {
			"guid": "9fc1f800-5aae-45f4-8979-9f605a86d2af",
			"file": "yoshisisland.ssf",
			"file_pub": "DAT0.ssf",
			"name": "Yoshi's Island"
		},
		"greenhillzone": {
			"guid": "84d6e11b-369c-4f8b-9c93-7de59e642d51",
			"file": "greenhillzone.ssf",
			"file_pub": "DAT21.ssf",
			"name": "Green Hill Zone"
		},
		"sandocean": {
			"guid": "5c8fc04d-2fc8-4c6b-b26b-4d76fde1c838",
			"file": "sandocean.ssf",
			"file_pub": "DAT158.ssf",
			"name": "Sand Ocean"
		},
		"centralhighway": {
			"guid": "bd592ce0-ad68-492d-b664-7e914dcaab68",
			"file": "centralhighway.ssf",
			"file_pub": "DAT296.ssf",
			"name": "Central Highway"
		},
		"hylianskies": {
			"guid": "0e8bba01-4206-406e-8426-13475d21fa7f",
			"file": "hylianskies.ssf",
			"file_pub": "DAT243.ssf",
			"name": "Hylian Skies"
		},
		"targettest_zamus": {
			"guid": "99982c2e-d441-48a5-b825-96d8e0e10b63",
			"file": "targettest_zamus.ssf",
			"file_pub": "DAT131.ssf"
		},
		"targettest": {
			"guid": "1bb4f664-f0cd-439c-a726-eb711afdfd4f",
			"file": "targettest.ssf",
			"file_pub": "DAT201.ssf"
		},
		"targettest_bowser": {
			"guid": "21621cef-9dca-43eb-8cbf-edb2eb80912d",
			"file": "targettest_bowser.ssf",
			"file_pub": "DAT49.ssf"
		},
		"steeldiver": {
			"guid": "fea2a8f1-46bf-4b42-99f1-d36dff7e1c81",
			"file": "steeldiver.ssf",
			"file_pub": "DAT108.ssf",
			"name": "Steel Diver"
		},
		"saturnvalley": {
			"guid": "e16b7535-9a52-4426-bf49-92470e6eade8",
			"file": "saturnvalley.ssf",
			"file_pub": "DAT41.ssf",
			"name": "Saturn Valley"
		},
		"tourian": {
			"guid": "1a5ca21f-91ef-46b2-b07e-bf9fad1212b0",
			"file": "tourian.ssf",
			"file_pub": "DAT91.ssf"
		},
		"phase8": {
			"guid": "dc973197-b371-4e18-bf93-9f07861d9f10",
			"file": "phase8.ssf",
			"file_pub": "DAT227.ssf",
			"name": "Phase 8"
		},
		"saffroncity": {
			"guid": "ee7ff71f-23c7-44e2-aa0a-b77b84654adc",
			"file": "saffroncity.ssf",
			"file_pub": "DAT186.ssf",
			"name": "Saffron City"
		},
		"targettest4": {
			"guid": "beeab96f-5cd5-41e8-ba25-ee6552b1ca36",
			"file": "targettest4.ssf",
			"file_pub": "DAT92.ssf"
		},
		"smashville": {
			"guid": "2974ce3a-44de-415f-bc8d-d434f6fe0da2",
			"file": "smashville.ssf",
			"file_pub": "DAT183.ssf",
			"name": "Smashville"
		},
		"draculascastle": {
			"guid": "efac6fad-6751-4804-aac5-7a7dd0253636",
			"file": "draculascastle.ssf",
			"file_pub": "DAT242.ssf",
			"name": "Dracula's Castle"
		},
		"crateria": {
			"guid": "a84cddaa-14aa-4f83-b4e0-61faa8113c6d",
			"file": "crateria.ssf",
			"file_pub": "DAT181.ssf",
			"name": "Crateria"
		},
		"restarea": {
			"guid": "61363763-eee0-4fbe-88e9-367a3ae97db0",
			"file": "restarea.ssf",
			"file_pub": "DAT55.ssf",
			"name": "All-Star Rest Area"
		},
		"targettest_yoshi": {
			"guid": "a1d7f6d5-c02f-4247-a2bf-ff06020b3dc3",
			"file": "targettest_yoshi.ssf",
			"file_pub": "DAT160.ssf"
		},
		"emeraldcave": {
			"guid": "ce3d78f5-a7f5-4a71-a6c0-68e38e689ed2",
			"file": "emeraldcave.ssf",
			"file_pub": "DAT45.ssf",
			"name": "Emerald Cave"
		},
		"locked2": {},
		"sandbagbasketball": {
			"guid": "198c4259-af46-412a-b2e3-68f92e85f448",
			"file": "sandbagbasketball.ssf",
			"file_pub": "DAT289.ssf"
		},
		"targettest_lucario": {
			"guid": "752940a4-b76b-4150-90fd-2d66d967ce7e",
			"file": "targettest_lucario.ssf",
			"file_pub": "DAT314.ssf"
		},
		"bombfactory": {
			"guid": "1360391f-1a8e-4dc9-9032-7c347dd40a67",
			"file": "bombfactory.ssf",
			"file_pub": "DAT133.ssf",
			"name": "Bomb Factory"
		},
		"fairyglade": {
			"guid": "6c612779-36a5-485d-8011-765e99715114",
			"file": "fairyglade.ssf",
			"file_pub": "DAT14.ssf",
			"name": "Fairy Glade"
		},
		"lunarcore": {
			"guid": "09f18b4d-7992-469b-9a63-e1a2d4d43a77",
			"file": "lunarcore.ssf",
			"file_pub": "DAT255.ssf",
			"name": "Lunar Core"
		},
		"twilighttown": {
			"guid": "56f42162-cd47-43d8-be56-8265fc2d0c86",
			"file": "twilighttown.ssf",
			"file_pub": "DAT97.ssf",
			"name": "Twilight Town"
		},
		"finalvalley": {
			"guid": "4ba032a2-0bad-4a1e-8e32-06ad41f6513e",
			"file": "finalvalley.ssf",
			"file_pub": "DAT37.ssf",
			"name": "Final Valley"
		},
		"fourside": {
			"guid": "c970d1df-a3d6-4de7-b761-a90bd60215ca",
			"file": "fourside.ssf",
			"file_pub": "DAT274.ssf",
			"name": "Fourside"
		},
		"waitingroom": {
			"guid": "9a13e61a-bf28-4396-9d37-ac8a97c3a03b",
			"file": "waitingroom.ssf",
			"file_pub": "DAT56.ssf",
			"name": "Waiting Room"
		},
		"mushroomkingdom3": {
			"guid": "0838825f-ca19-4452-96d5-6d9beb4d659d",
			"file": "mushroomkingdom3.ssf",
			"file_pub": "DAT113.ssf",
			"name": "Mushroom Kingdom III"
		},
		"urbanchampion": {
			"guid": "d93172e4-15dd-4128-afef-9bfc55c1ac7a",
			"file": "urbanchampion.ssf",
			"file_pub": "DAT163.ssf",
			"name": "Urban Champion"
		},
		"towerofsalvation": {
			"guid": "6fb5d183-c213-4f8d-bcf8-832ef8fb9cdf",
			"file": "towerofsalvation.ssf",
			"file_pub": "DAT47.ssf",
			"name": "Tower of Salvation"
		},
		"bowserscastle": {
			"guid": "d2682e2b-5af4-4774-89e8-dc75952d403d",
			"file": "bowserscastle.ssf",
			"file_pub": "DAT249.ssf",
			"name": "Bowser's Castle"
		},
		"worldtournament": {
			"guid": "a62a70eb-1db2-4eb8-832c-6a6550f1e52f",
			"file": "worldtournament.ssf",
			"file_pub": "DAT126.ssf",
			"name": "World Tournament"
		},
		"targettest_blackmage": {
			"guid": "fa18c791-c209-4122-9dcf-3f0e643584b2",
			"file": "targettest_blackmage.ssf",
			"file_pub": "DAT148.ssf"
		},
		"desk": {
			"guid": "0aef7335-479a-43d7-9659-8e794446aa81",
			"file": "desk.ssf",
			"file_pub": "DAT195.ssf",
			"name": "Desk"
		},
		"tinystage": {
			"guid": "ad34aafc-3b94-11e6-ac61-9e71128cae77",
			"file": "tinystage.ssf",
			"file_pub": "DAT67.ssf",
			"name": "Polygon Zone"
		},
		"pacmaze": {
			"guid": "f7bbc062-7684-4c24-9fde-d8610c9dfcb2",
			"file": "pacmaze.ssf",
			"file_pub": "DAT77.ssf",
			"name": "PAC-MAZE"
		},
		"castlesiege": {
			"guid": "960c23e4-5910-4b1f-9c59-4935781ae00c",
			"file": "castlesiege.ssf",
			"file_pub": "DAT16.ssf",
			"name": "Castle Siege"
		},
		"targettest_bomberman": {
			"guid": "5a6b7257-f4ac-487d-b0fd-8d6d94c88f26",
			"file": "targettest_bomberman.ssf",
			"file_pub": "DAT259.ssf"
		},
		"battlefield": {
			"guid": "ad6f95ac-4566-40eb-9ad3-e75702242cfd",
			"file": "battlefield.ssf",
			"file_pub": "DAT192.ssf",
			"name": "Battlefield"
		},
		"sandbagsoccer": {
			"guid": "2f707e4f-dd5c-41db-86be-323a134c78bd",
			"file": "sandbagsoccer.ssf",
			"file_pub": "DAT202.ssf"
		},
		"homeruncontest": {
			"guid": "83faeedf-fa53-4b96-95d2-880a0486c00a",
			"file": "homeruncontest.ssf",
			"file_pub": "DAT78.ssf"
		},
		"metalcavern": {
			"guid": "88b449d1-b1a2-45d8-bf83-f6bbf1dddfe9",
			"file": "metalcavern.ssf",
			"file_pub": "DAT51.ssf",
			"name": "Meta Crystal"
		},
		"palutenasshrine": {
			"guid": "911bf24b-ac88-44d6-a3d8-0d42fc3926d5",
			"file": "palutenasshrine.ssf",
			"file_pub": "DAT60.ssf",
			"name": "Palutena's Shrine"
		},
		"theworldthatneverwas": {
			"guid": "f5bc405e-74e6-4358-89fa-84f6a7e86acf",
			"file": "theworldthatneverwas.ssf",
			"file_pub": "DAT278.ssf",
			"name": "The World That Never Was"
		},
		"targettest3": {
			"guid": "be3320f1-201f-4b15-9d18-4e0092653fcc",
			"file": "targettest3.ssf",
			"file_pub": "DAT304.ssf"
		},
		"skypillar": {
			"guid": "a24b67a4-f69f-48ba-b8d8-8d2d1b0a4fb5",
			"file": "skypillar.ssf",
			"file_pub": "DAT268.ssf",
			"name": "Sky Pillar"
		},
		"suzakucastle": {
			"guid": "62d85510-e68f-44e3-9a8f-63304d01e55e",
			"file": "suzakucastle.ssf",
			"file_pub": "DAT306.ssf",
			"name": "Suzaku Castle"
		},
		"konohavillage": {
			"guid": "398f6974-49ef-4253-8967-50a749e649a1",
			"file": "konohavillage.ssf",
			"file_pub": "DAT230.ssf",
			"name": "Hidden Leaf Village"
		},
		"flatzoneplus": {
			"guid": "096574ef-18ff-4cd2-98b0-a99c08dd30a0",
			"file": "flatzoneplus.ssf",
			"file_pub": "DAT129.ssf",
			"name": "Flat Zone +"
		},
		"targettest_marth": {
			"guid": "1bd83e0c-c67e-4f3e-8c9c-124dfef486b8",
			"file": "targettest_marth.ssf",
			"file_pub": "DAT276.ssf"
		},
		"yoshisisland64": {
			"guid": "d44a06b9-57b5-4984-83f0-b102591277a5",
			"file": "yoshisisland64.ssf",
			"file_pub": "DAT88.ssf",
			"name": "Yoshi's Island (64)"
		},
		"sectorz": {
			"guid": "84272dba-a44c-4d4b-abe5-0a036419bdc7",
			"file": "sectorz.ssf",
			"file_pub": "DAT204.ssf",
			"name": "Sector Z"
		},
		"kingdom2": {
			"guid": "d1ed3e6b-06f2-4177-9781-8896642a6ead",
			"file": "kingdom2.ssf",
			"file_pub": "DAT288.ssf",
			"name": "Mushroom Kingdom II"
		},
		"peachscastle": {
			"guid": "7989887c-6ead-46c3-a514-c14f3b0135c4",
			"file": "peachscastle.ssf",
			"file_pub": "DAT332.ssf",
			"name": "Princess Peach's Castle"
		},
		"planetnamek": {
			"guid": "6a858747-1df4-4bf2-ae09-090c27db416c",
			"file": "planetnamek.ssf",
			"file_pub": "DAT89.ssf",
			"name": "Planet Namek"
		},
		"targettest_donkeykong": {
			"guid": "59c8c084-80d9-4350-ad5e-77b1c9909659",
			"file": "targettest_donkeykong.ssf",
			"file_pub": "DAT170.ssf"
		},
		"targettest_mario": {
			"guid": "4638e2cb-b633-4c0b-8e87-742ea4c295bb",
			"file": "targettest_mario.ssf",
			"file_pub": "DAT244.ssf"
		},
		"hyrulecastle64": {
			"guid": "03f26f02-0208-4f6e-a365-60bc390c835c",
			"file": "hyrulecastle64.ssf",
			"file_pub": "DAT329.ssf",
			"name": "Hyrule Castle"
		},
		"gangplankgalleon": {
			"guid": "b9c338ce-f61a-466d-a9e3-5c6dba0777db",
			"file": "gangplankgalleon.ssf",
			"file_pub": "DAT36.ssf",
			"name": "Gangplank Galleon"
		},
		"pokemoncolosseum": {
			"guid": "52372260-aa56-4f81-91d1-9125503d30b5",
			"file": "pokemoncolosseum.ssf",
			"file_pub": "DAT52.ssf",
			"name": "Pokémon Colosseum"
		},
		"crystalsmash": {
			"guid": "194a4972-6e45-49f3-969e-50b2ee3c84d4",
			"file": "crystalsmash.ssf",
			"file_pub": "DAT90.ssf",
			"name": "Crystal Smash Stage"
		},
		"yoshisstory": {
			"guid": "78ec5f26-dcf3-4699-beaf-68f43f4e5c37",
			"file": "yoshisstory.ssf",
			"file_pub": "DAT176.ssf",
			"name": "Yoshi's Story"
		},
		"kingdom1": {
			"guid": "40eee938-d95d-4133-aaac-29c6013d96a4",
			"file": "kingdom1.ssf",
			"file_pub": "DAT322.ssf",
			"name": "Mushroom Kingdom"
		},
		"targettest_sora": {
			"guid": "1e5eddec-11cb-4a2a-8944-48a092d70911",
			"file": "targettest_sora.ssf",
			"file_pub": "DAT118.ssf"
		},
		"warioware": {
			"guid": "f0f9a82a-531b-46e8-9ce0-03a58042629f",
			"file": "warioware.ssf",
			"file_pub": "DAT43.ssf",
			"name": "WarioWare, Inc."
		},
		"targettest_megaman": {
			"guid": "588b4b5e-04a7-46f8-8808-40b991372b91",
			"file": "targettest_megaman.ssf",
			"file_pub": "DAT327.ssf"
		},
		"nintendo3ds": {
			"guid": "35d7b2e5-4bba-478e-8113-0620149a3b48",
			"file": "nintendo3ds.ssf",
			"file_pub": "DAT122.ssf",
			"name": "Nintendo 3DS"
		},
		"huecomundo": {
			"guid": "54647e53-1c41-4995-afbb-dd769c2f656c",
			"file": "huecomundo.ssf",
			"file_pub": "DAT112.ssf",
			"name": "Hueco Mundo"
		},
		"locked3": {},
		"finaldestination": {
			"guid": "1fd1576f-0b77-4c6f-9a7d-3fe6ac0e6ce0",
			"file": "finaldestination.ssf",
			"file_pub": "DAT250.ssf",
			"name": "Final Destination"
		},
		"lakeofrage": {
			"guid": "838a3f70-2f3f-4a98-acbd-f4af382595b5",
			"file": "lakeofrage.ssf",
			"file_pub": "DAT96.ssf",
			"name": "Lake of Rage"
		}
	},
	"character_xp": {}
}

        public static const FN_PATTERN:RegExp = /(.*?)\((.*?)\)/g;
        public static const LOAD_DELAY:int = 50;
        public static var pool:Vector.<Resource> = new Vector.<Resource>();
        public static var poolHash:Object = {};
        public static var resources:Vector.<Resource> = new Vector.<Resource>();
        public static var resourcesHash:Object = {};
        public static var queue:Vector.<Resource> = new Vector.<Resource>();
        public static var queueHash:Object = {};
        public static var multimode:Boolean = true;
        public static var optimizeMemory:Boolean = true;
        public static var FORCE_ENABLE_ALT_TRACKS:Boolean = false;
        private static var _isFinishedInterval:uint;
        private static var _loadOptions:Object;
        private static var _loadIndex:int;
        public static var resourceCache:Object = {};
        private static var m_expansionData:Vector.<Vector.<Function>> = new Vector.<Vector.<Function>>();


        public static function init():void
        {
            var i:*;
            var randString:String;
            var data:Object = ResourceManager.manifestJSONData;
            var obj:Object;
            var newsResource:Resource = new Resource("menu_news", null, null, "dfc43fc4-2d45-49c3-bb3c-8c05be73ec81", Resource.MENU);
            addResource(newsResource);
            for (i in data.character)
            {
                obj = data.character[i];
                addResource(new Resource(i, obj.file, obj.file_pub, obj.guid, Resource.CHARACTER));
            };
            for (i in data.stage)
            {
                obj = data.stage[i];
                addResource(new Resource(i, obj.file, obj.file_pub, obj.guid, Resource.STAGE));
            };
            for (i in data.misc)
            {
                obj = data.misc[i];
                addResource(new Resource(i, obj.file, obj.file_pub, obj.guid, Resource.MISC));
            };
            for (i in data.extra)
            {
                obj = data.extra[i];
                addResource(new Resource(i, obj.file, obj.file_pub, obj.guid, Resource.EXTRA));
            };
            for (i in data.menu)
            {
                obj = data.menu[i];
                addResource(new Resource(i, obj.file, obj.file_pub, obj.guid, Resource.MENU));
            };
            for (i in data.audio)
            {
                obj = data.audio[i];
                addResource(new Resource(i, obj.file, obj.file_pub, obj.guid, Resource.AUDIO));
            };
            for (i in data.music)
            {
                obj = data.music[i];
                addResource(new Resource(i, obj.file, obj.file_pub, obj.guid, Resource.MUSIC));
            };
            for (i in data.modes)
            {
                obj = data.modes[i];
                addResource(new Resource(i, obj.file, obj.file_pub, obj.guid, Resource.MODE));
            };
            randString = Math.random().toString().replace(/\./g, "");
            newsResource.SoftFail = true;
            newsResource.UrlOverride = ("https://www.supersmashflash.com/flash?f=games/ssf2news121.swf&" + randString);
        }

        public static function get TotalExpansions():Number
        {
            return (m_expansionData.length);
        }

        public static function clearResourceCache():void
        {
            ResourceManager.resourceCache = {};
        }

        private static function cacheLibrary(res:Resource):void
        {
            var resources:Object = res.getProp("resources");
            var i:int;
            if (res.getProp("audio"))
            {
            };
            if (resources)
            {
                if (resources.movieclips)
                {
                    i = 0;
                    while (i < resources.movieclips.length)
                    {
                        ResourceManager.getLibraryClass(resources.movieclips[i]);
                        i++;
                    };
                };
                if (resources.sounds)
                {
                    i = 0;
                    while (i < resources.sounds.length)
                    {
                        ResourceManager.getLibraryClass(resources.sounds[i]);
                        i++;
                    };
                };
            };
        }

        public static function isRequiredResourceType(_arg_1:int):Boolean
        {
            return ((((_arg_1 === Resource.MENU) || (_arg_1 === Resource.MISC)) || (_arg_1 === Resource.AUDIO)) || (_arg_1 === Resource.MODE));
        }

        public static function addResource(resource:Resource):void
        {
            if (resource.ID === "put_id_here")
            {
                return;
            };
            if ((!(resource)))
            {
                trace("[ResourceManager] Null resource provided!!!.");
            }
            else
            {
                if ((!(resource.ID)))
                {
                    trace("[ResourceManager] Error, resource requires an ID in order to be stored.");
                }
                else
                {
                    if (ResourceManager.poolHash[resource.ID])
                    {
                        trace((("[ResourceManager] Error, resource " + resource.ID) + " has already been added"));
                    }
                    else
                    {
                        ResourceManager.poolHash[resource.ID] = resource;
                        ResourceManager.pool.push(resource);
                        trace(("[ResourceManager] Added resource: " + resource.ID));
                        if (((resource.Loaded) && (!(resourcesHash[resource.ID]))))
                        {
                            ResourceManager.resourcesHash[resource.ID] = resource;
                            ResourceManager.resources.push(resource);
                        };
                    };
                };
            };
        }

        public static function queueResources(resourceList:Array):void
        {
            var i:int;
            i = 0;
            while (i < resourceList.length)
            {
                if ((!(ResourceManager.poolHash[resourceList[i]])))
                {
                    trace(("[ResourceManager] Resource could not be found: " + resourceList[i]));
                }
                else
                {
                    if ((!(ResourceManager.queueHash[resourceList[i]])))
                    {
                        if (resourceList[i] === "sheik")
                        {
                            if ((!(ResourceManager.queueHash["zelda"])))
                            {
                                queueResources(["zelda"]);
                            };
                            return;
                        };
                        ResourceManager.queueHash[resourceList[i]] = ResourceManager.poolHash[resourceList[i]];
                        ResourceManager.queue.push(ResourceManager.poolHash[resourceList[i]]);
                        trace(("[ResourceManager] Queued resource: " + resourceList[i]));
                    };
                };
                i++;
            };
        }

        public static function queueRequiredResources():void
        {
            var resource:Resource;
            var i:int;
            while (i < ResourceManager.pool.length)
            {
                resource = ResourceManager.pool[i];
                if ((((ResourceManager.isRequiredResourceType(resource.Type)) && (!(ResourceManager.resourcesHash[resource.ID]))) && (!(ResourceManager.queueHash[resource.ID]))))
                {
                    ResourceManager.queueHash[resource.ID] = resource;
                    ResourceManager.queue.push(resource);
                    trace(("[ResourceManager] Queued resource: " + resource.ID));
                };
                i++;
            };
        }

        public static function flushAllResources(forceUnload:Boolean=false):void
        {
            var resource:Resource;
            var i:int;
            while (i < ResourceManager.resources.length)
            {
                resource = ResourceManager.resources[i];
                if (((!(ResourceManager.isRequiredResourceType(resource.Type))) || (forceUnload)))
                {
                    unloadResource(resource);
                    i--;
                    trace(("[ResourceManager] Unloaded resource: " + resource.ID));
                };
                i++;
            };
        }

        public static function flushUnusedResources():void
        {
            var resource:Resource;
            var i:int;
            while (i < ResourceManager.resources.length)
            {
                resource = ResourceManager.resources[i];
                if (((!(ResourceManager.isRequiredResourceType(resource.Type))) && (!(ResourceManager.queueHash[resource.ID]))))
                {
                    unloadResource(resource);
                    i--;
                    trace(("[ResourceManager] Unloaded resource: " + resource.ID));
                };
                i++;
            };
        }

        public static function flushLoadQueue():void
        {
            var resource:Resource;
            var i:int;
            while (i < ResourceManager.queue.length)
            {
                resource = ResourceManager.queue[i];
                ResourceManager.queueHash[resource.ID] = null;
                ResourceManager.queue[i] = null;
                ResourceManager.queue.splice(i--, 1);
                trace(("[ResourceManager] Removed resource from loading queue: " + resource.ID));
                i++;
            };
        }

        public static function pruneLoadQueue():void
        {
            var resource:Resource;
            var i:int;
            while (i < ResourceManager.queue.length)
            {
                resource = ResourceManager.queue[i];
                if (resource.Loaded)
                {
                    if ((!(ResourceManager.resourcesHash[resource.ID])))
                    {
                        ResourceManager.resourcesHash[resource.ID] = resource;
                        ResourceManager.resources.push(resource);
                    };
                    ResourceManager.queueHash[resource.ID] = null;
                    ResourceManager.queue[i] = null;
                    ResourceManager.queue.splice(i--, 1);
                    trace(("[ResourceManager] Removed already loaded resource from loading queue: " + resource.ID));
                };
                i++;
            };
        }

        public static function load(options:Object):void
        {
            var checkFinished:Function;
            var i:int;
            var checkProgress:Function;
            ResourceManager.unloadOldResources();
            if (ResourceManager._isFinishedInterval)
            {
                if (ResourceManager._loadOptions.onerror)
                {
                    ResourceManager._loadOptions.onerror();
                };
                clearInterval(ResourceManager._isFinishedInterval);
                ResourceManager._isFinishedInterval = 0;
            };
            ResourceManager._loadOptions = ((options) || ({}));
            ResourceManager._loadIndex = 0;
            if (ResourceManager.multimode)
            {
                checkFinished = function ():void
                {
                    if (typeof(ResourceManager._loadOptions.onprogress) == "function")
                    {
                        ResourceManager._loadOptions.onprogress(ResourceManager.getLoadPercentage());
                    };
                    if (ResourceManager.isFullyLoaded())
                    {
                        ResourceManager.flushLoadQueue();
                        clearInterval(ResourceManager._isFinishedInterval);
                        ResourceManager._isFinishedInterval = 0;
                        if (typeof(ResourceManager._loadOptions.oncomplete) == "function")
                        {
                            ResourceManager._loadOptions.oncomplete();
                        };
                        trace("[ResourceManager] Finished loading all resources.");
                    };
                };
                i = 0;
                while (i < ResourceManager.queue.length)
                {
                    trace("[ResourceManager] Started loading resource: ", ResourceManager.queue[i].ID);
                    if (((ResourceManager.queue[i].Loaded) && (ResourceManager.queue[i].Type === Resource.STAGE)))
                    {
                        ResourceManager.checkMusicToLoad(ResourceManager.queue[i]);
                    };
                    ResourceManager.queue[i].load(handleLoaded, handleLoaded);
                    i = (i + 1);
                };
                ResourceManager._isFinishedInterval = setInterval(checkFinished, 100);
            }
            else
            {
                checkProgress = function ():void
                {
                    if (typeof(ResourceManager._loadOptions.onprogress) == "function")
                    {
                        ResourceManager._loadOptions.onprogress(ResourceManager.getLoadPercentage());
                    };
                };
                ResourceManager._isFinishedInterval = setInterval(checkProgress, 100);
                setTimeout(function ():void
                {
                    ResourceManager.loadNext();
                }, LOAD_DELAY);
            };
        }

        public static function checkMusicToLoad(res:Resource):void
        {
            var debugMusicID:String;
            var music_id:String;
            var _local_4:int;
            if (res.Type === Resource.STAGE)
            {
                if (((res.getProp("music")) && (res.getProp("music").length)))
                {
                    Main.prepRandomMusic(Utils.safeRandomInteger(0, (res.getProp("music").length - 1)));
                    music_id = res.getProp("music")[Main.RandMusicIndex].id;
                    if ((((ResourceManager.getResourceByID(music_id)) && (!(ResourceManager.getResourceByID(music_id, true)))) && (!(ResourceManager.queueHash[music_id]))))
                    {
                        ResourceManager.queueResources([music_id]);
                        if (ResourceManager.multimode)
                        {
                            Resource(ResourceManager.queueHash[music_id]).load(handleLoaded, handleLoaded);
                        };
                    };
                };
            };
        }

        private static function handleLoaded(res:Resource):void
        {
            if (ResourceManager.multimode)
            {
                if (res.Loaded)
                {
                    ResourceManager.resources.push(res);
                    ResourceManager.resourcesHash[res.ID] = res;
                    ResourceManager.cacheLibrary(res);
                    trace("[ResourceManager] Loaded: ", res.ID);
                    if ((!(ResourceManager.validateResource(res))))
                    {
                        unloadResource(res);
                    }
                    else
                    {
                        checkMusicToLoad(res);
                    };
                }
                else
                {
                    if (((res.HasError) && (res.SoftFail)))
                    {
                        unloadResource(res);
                    }
                    else
                    {
                        if (res.HasError)
                        {
                            if (typeof(ResourceManager._loadOptions.onerror) == "function")
                            {
                                ResourceManager._loadOptions.onerror();
                            };
                            trace("[ResourceManager] An error has occured while loading resource: ", res.ID);
                        };
                    };
                };
            }
            else
            {
                if (ResourceManager.queue[ResourceManager._loadIndex].Loaded)
                {
                    ResourceManager.resources.push(res);
                    ResourceManager.resourcesHash[res.ID] = res;
                    ResourceManager.cacheLibrary(res);
                    trace("[ResourceManager] Loaded: ", res);
                    ResourceManager._loadIndex++;
                    if ((!(ResourceManager.validateResource(res))))
                    {
                        unloadResource(res);
                    }
                    else
                    {
                        checkMusicToLoad(res);
                    };
                    setTimeout(function ():void
                    {
                        ResourceManager.loadNext();
                    }, LOAD_DELAY);
                }
                else
                {
                    if (((ResourceManager.queue[ResourceManager._loadIndex].HasError) && (ResourceManager.queue[ResourceManager._loadIndex].SoftFail)))
                    {
                        unloadResource(ResourceManager.queue[ResourceManager._loadIndex]);
                        ResourceManager._loadIndex++;
                        ResourceManager.loadNext();
                    }
                    else
                    {
                        if (ResourceManager.queue[ResourceManager._loadIndex].HasError)
                        {
                            if (typeof(ResourceManager._loadOptions.onerror) == "function")
                            {
                                ResourceManager._loadOptions.onerror();
                            };
                            trace("[ResourceManager] An error has occured while loading resource: ", ResourceManager.queue[ResourceManager._loadIndex].ID);
                            ResourceManager._loadIndex++;
                            ResourceManager.loadNext();
                        };
                    };
                };
            };
        }

        private static function loadNext():void
        {
            if (ResourceManager._loadIndex < ResourceManager.queue.length)
            {
                trace("[ResourceManager] Started loading resource: ", ResourceManager.queue[ResourceManager._loadIndex].ID);
                if (((ResourceManager.queue[ResourceManager._loadIndex].Loaded) && (ResourceManager.queue[ResourceManager._loadIndex].Type === Resource.STAGE)))
                {
                    ResourceManager.checkMusicToLoad(ResourceManager.queue[ResourceManager._loadIndex]);
                };
                if (ResourceManager.queue[ResourceManager._loadIndex].Loaded)
                {
                    ResourceManager._loadIndex++;
                    loadNext();
                }
                else
                {
                    ResourceManager.queue[ResourceManager._loadIndex].load(handleLoaded, handleLoaded);
                };
            }
            else
            {
                clearInterval(ResourceManager._isFinishedInterval);
                ResourceManager._isFinishedInterval = 0;
                if (ResourceManager.isFullyLoaded())
                {
                    ResourceManager.flushLoadQueue();
                    if (typeof(ResourceManager._loadOptions.oncomplete) == "function")
                    {
                        ResourceManager._loadOptions.oncomplete();
                    };
                    trace("[ResourceManager] Finished loading all resources.");
                }
                else
                {
                    trace("[ResourceManager] Unable to load all resources.");
                };
            };
        }

        public static function getLoadPercentage():Number
        {
            var total:int;
            var extra:int;
            var i:int;
            while (i < ResourceManager.queue.length)
            {
                if (((ResourceManager.queue[i].HasError) && (ResourceManager.queue[i].SoftFail)))
                {
                    total = (total + 100);
                }
                else
                {
                    total = (total + ResourceManager.queue[i].PercentLoaded);
                };
                i++;
            };
            return ((ResourceManager.queue.length <= 0) ? 100 : (total / (ResourceManager.queue.length - extra)));
        }

        public static function isFullyLoaded():Boolean
        {
            var i:int;
            while (i < ResourceManager.queue.length)
            {
                if (((!(ResourceManager.queue[i].Loaded)) && (!((ResourceManager.queue[i].HasError) && (ResourceManager.queue[i].SoftFail)))))
                {
                    return (false);
                };
                i++;
            };
            return (true);
        }

        private static function validateResource(resource:Resource):Boolean
        {
            var apiFunc:Function;
            var cls:Class;
            var diff:int;
            var versionStr:String;
            var characters:Array;
            var expansionChars:Array;
            var j:int;
            if (((resource.MC) && ("initAPI" in resource.MC)))
            {
                apiFunc = (resource.MC["initAPI"] as Function);
                cls = apiFunc(SSF2API);
                if (("BASE_CLASSES" in cls))
                {
                    resource.MetaData.BASE_CLASSES = cls.BASE_CLASSES;
                }
                else
                {
                    resource.MetaData.BASE_CLASSES = {};
                };
                diff = Version.compare(SSF2API.VERSION_MAJOR, SSF2API.VERSION_MINOR, SSF2API.VERSION_REVISION, cls.VERSION_MAJOR, cls.VERSION_MINOR, cls.VERSION_REVISION);
                versionStr = ((cls["getAPIVersion"] as Function) ? (cls["getAPIVersion"] as Function)() : "(unknown)");
                if (diff > 0)
                {
                    if ((((!(SSF2API.VERSION_MAJOR === cls.VERSION_MAJOR)) || (!(SSF2API.VERSION_MINOR === cls.VERSION_MINOR))) || (((cls.VERSION_MAJOR === 0) && (cls.VERSION_MINOR === 3)) && (cls.VERSION_REVISION < 22))))
                    {
                        if ((((Main.DEBUG) && (MenuController.debugConsole)) && (MenuController.debugConsole.Alerts)))
                        {
                            MenuController.debugConsole.alert((((((('[Warning] API for resource "' + resource.FileName) + "\" is older than the game engine's API Interface. Please recompile resource. (v") + versionStr) + " < v") + SSF2API.getAPIVersion()) + ")"));
                        };
                    };
                }
                else
                {
                    if (diff < 0)
                    {
                        if ((((Main.DEBUG) && (MenuController.debugConsole)) && (MenuController.debugConsole.Alerts)))
                        {
                            MenuController.debugConsole.alert((((((('[Warning] API for resource "' + resource.FileName) + "\" is newer than the engine's API Interface. Please update game engine. (v") + versionStr) + " > v") + SSF2API.getAPIVersion()) + ")"));
                        };
                    };
                };
            };
            if (resource.getProp("id"))
            {
                if (ResourceManager.getResourceByID(resource.getProp("id")) != null)
                {
                    if (resource.getProp("guid"))
                    {
                        if (resource.getProp("guid") == ResourceManager.getResourceByID(resource.getProp("id")).PassKey)
                        {
                            resource.Type = ResourceManager.getResourceByID(resource.getProp("id")).Type;
                            if (resource.Type != Resource.STAGE)
                            {
                                if (resource.Type == Resource.CHARACTER)
                                {
                                    characters = ((resource.getProp("characters")) || (null));
                                    if (characters)
                                    {
                                        j = 0;
                                        while (j < characters.length)
                                        {
                                            Stats.writeStats(characters[j]);
                                            j++;
                                        };
                                    }
                                    else
                                    {
                                        trace(((("ERROR writing stats for " + resource.getProp("id")) + " with key ") + resource.getProp("guid")));
                                        return (false);
                                    };
                                };
                            };
                        }
                        else
                        {
                            trace(((("ERROR in validation for " + resource.getProp("id")) + " with key ") + resource.getProp("guid")));
                            return (false);
                        };
                    }
                    else
                    {
                        trace(("ERROR, no GUID for " + resource.getProp("id")));
                        return (false);
                    };
                }
                else
                {
                    trace(("ERROR, no matching ID for global " + resource.getProp("id")));
                    unloadResource(resource);
                    return (false);
                };
            }
            else
            {
                if (resource.getProp("expansion"))
                {
                    expansionChars = resource.getProp("characters");
                    if (((expansionChars) && (resource.FileName.indexOf("test") == 0)))
                    {
                        m_expansionData.push(new Vector.<Function>());
                        j = 0;
                        while (j < expansionChars.length)
                        {
                            m_expansionData[(m_expansionData.length - 1)].push(expansionChars[j]);
                            j++;
                        };
                    }
                    else
                    {
                        if (!resource.getProp("stage"))
                        {
                            trace(("ERROR, no association for " + resource.Location));
                            unloadResource(resource);
                            return (false);
                        };
                    };
                };
            };
            return (true);
        }

        public static function unloadResource(res:Resource):void
        {
            var key:*;
            var apiFunc:Function;
            var i:int = ResourceManager.resources.indexOf(res);
            if (i >= 0)
            {
                if (((res.MC) && ("deinitAPI" in res.MC)))
                {
                    apiFunc = (res.MC["deinitAPI"] as Function);
                    (apiFunc());
                };
                res.unload();
                ResourceManager.resourcesHash[res.ID] = null;
                ResourceManager.resources[i] = null;
                ResourceManager.resources.splice(i, 1);
                for (key in ResourceManager.resourceCache)
                {
                    if (((ResourceManager.resourceCache[key]) && (ResourceManager.resourceCache[key].src === res.ID)))
                    {
                        ResourceManager.resourceCache[key] = null;
                    };
                };
                if (res.Type === Resource.CHARACTER)
                {
                    Stats.clearStats(res.ID);
                };
            };
        }

        private static function getOldestResourceByType(_arg_1:int):Resource
        {
            var i:int;
            while (i < ResourceManager.resources.length)
            {
                if (ResourceManager.resources[i].Type === _arg_1)
                {
                    return (ResourceManager.resources[i]);
                };
                i++;
            };
            return (null);
        }

        private static function unloadOldResources():void
        {
            var key:*;
            var CHARACTER_LIMIT:int = ((!(Main.LOCALHOST)) ? 12 : 2);
            var STAGE_LIMIT:int = ((!(Main.LOCALHOST)) ? 10 : 1);
            var MUSIC_LIMIT:int = ((!(Main.LOCALHOST)) ? 16 : ((Main.DEBUG) ? 6 : 1));
            var totals:Object = {};
            var i:int;
            while (i < ResourceManager.resources.length)
            {
                if ((!(totals[ResourceManager.resources[i].Type])))
                {
                    totals[ResourceManager.resources[i].Type] = 0;
                };
                totals[ResourceManager.resources[i].Type]++;
                i++;
            };
            for (key in totals)
            {
                if (key === Resource.CHARACTER)
                {
                    while (totals[key] > CHARACTER_LIMIT)
                    {
                        ResourceManager.unloadResource(ResourceManager.getOldestResourceByType(Resource.CHARACTER));
                        totals[key]--;
                    };
                }
                else
                {
                    if (key === Resource.STAGE)
                    {
                        if (totals[key] > STAGE_LIMIT)
                        {
                            ResourceManager.unloadResource(ResourceManager.getOldestResourceByType(Resource.STAGE));
                            totals[key]--;
                        };
                    }
                    else
                    {
                        if (key === Resource.MUSIC)
                        {
                            if (totals[key] > MUSIC_LIMIT)
                            {
                                ResourceManager.unloadResource(ResourceManager.getOldestResourceByType(Resource.MUSIC));
                                totals[key]--;
                            };
                        };
                    };
                };
            };
        }

        private static function promoteResource(res:Resource):void
        {
            var index:int = -1;
            var i:int;
            while (i < ResourceManager.resources.length)
            {
                if (ResourceManager.resources[i] === res)
                {
                    index = i;
                    return;
                };
                i++;
            };
            if (index >= 0)
            {
                ResourceManager.resources.splice(index, 1);
                ResourceManager.resources.push(res);
            };
        }

        public static function getResourceByID(id:String, mustBeLoaded:Boolean=false):Resource
        {
            if (((ResourceManager.poolHash[id]) && (!((mustBeLoaded) && (!(ResourceManager.poolHash[id].Loaded))))))
            {
                return (ResourceManager.poolHash[id]);
            };
            return (null);
        }

        public static function getLibraryMC(mcName:String):MovieClip
        {
            var myClass:Class = ResourceManager.getLibraryClass(mcName);
            if (myClass)
            {
                return (new (myClass)() as MovieClip);
            };
            return (null);
        }

        public static function getLibraryClass(className:String):Class
        {
            var retClass:Class;
            var retResourceID:String = "root";
            var i:Number = 0;
            if (ResourceManager.resourceCache[className])
            {
                return (resourceCache[className].ref);
            };
            if (Main.Root.loaderInfo.applicationDomain.hasDefinition(className))
            {
                retClass = (Main.Root.loaderInfo.applicationDomain.getDefinition(className) as Class);
            }
            else
            {
                i = 0;
                while (i < ResourceManager.resources.length)
                {
                    if ((((ResourceManager.resources[i].Loaded) && (ResourceManager.resources[i])) && (ResourceManager.resources[i].MC)))
                    {
                        if (ResourceManager.resources[i].MC.loaderInfo.applicationDomain.hasDefinition(className))
                        {
                            retClass = (ResourceManager.resources[i].MC.loaderInfo.applicationDomain.getDefinition(className) as Class);
                            retResourceID = resources[i].ID;
                            break;
                        };
                        if (ResourceManager.resources[i].MC[className])
                        {
                            retClass = (ResourceManager.resources[i].MC[className] as Class);
                            retResourceID = resources[i].ID;
                            break;
                        };
                    };
                    i++;
                };
            };
            if (retClass)
            {
                ResourceManager.resourceCache[className] = {
                    "ref":retClass,
                    "src":retResourceID
                };
            };
            return (retClass);
        }

        public static function getLibrarySound(soundName:String):Sound
        {
            var myClass:Class = ResourceManager.getLibraryClass(soundName);
            if (myClass)
            {
                return (new (myClass)() as Sound);
            };
            return (null);
        }

        public static function getPokemonStatsData():Object
        {
            return (getResourceByID("pokemon").getProp("pokemon"));
        }

        public static function getAssistStatsData():Object
        {
            return (getResourceByID("assists").getProp("assists"));
        }

        public static function getItemStats():Array
        {
            var obj:Array = getResourceByID("items").MC.getItemStats();
            return ((obj) || (null));
        }

        public static function getAllCostumes(charName:String, teamColor:String, includeBase:Boolean=false):Array
        {
            var obj:Object;
            var i:int;
            var results:Array = [];
            var costumeList:Array = getResourceByID("misc").getProp("metadata").costume_data;
            if (costumeList != null)
            {
                if (((costumeList) && (!(costumeList[charName] == null))))
                {
                    obj = null;
                    i = 0;
                    while (i < costumeList[charName].length)
                    {
                        if (teamColor != null)
                        {
                            if ((((costumeList[charName][i]) && (costumeList[charName][i]["team"])) && (costumeList[charName][i]["team"] == teamColor)))
                            {
                                results.push(costumeList[charName][i]);
                                break;
                            };
                        }
                        else
                        {
                            if (costumeList[charName][i]["team"])
                            {
                            }
                            else
                            {
                                if (((costumeList[charName][i]["base"]) && (!(includeBase))))
                                {
                                }
                                else
                                {
                                    results.push(costumeList[charName][i]);
                                };
                            };
                        };
                        i++;
                    };
                };
            };
            return (results);
        }

        public static function getCostume(charName:String, teamColor:String, num:int=-1):Object
        {
            var obj:Object;
            var i:int;
            var costumeList:Array = getResourceByID("misc").getProp("metadata").costume_data;
            var current:int;
            var costumeObj:Object;
            if (costumeList != null)
            {
                if (((costumeList) && (!(costumeList[charName] == null))))
                {
                    obj = null;
                    if (num >= costumeList[charName].length)
                    {
                        num = -1;
                    };
                    i = 0;
                    while (i < costumeList[charName].length)
                    {
                        if (teamColor != null)
                        {
                            if ((((costumeList[charName][i]) && (costumeList[charName][i]["team"])) && (costumeList[charName][i]["team"] == teamColor)))
                            {
                                costumeObj = costumeList[charName][i];
                                break;
                            };
                        }
                        else
                        {
                            if (costumeList[charName][i]["team"])
                            {
                            }
                            else
                            {
                                if (((num >= 0) && (costumeList[charName][i]["base"])))
                                {
                                }
                                else
                                {
                                    if (num == current)
                                    {
                                        costumeObj = costumeList[charName][i];
                                        break;
                                    };
                                    if (((num === -1) && (costumeList[charName][i]["base"])))
                                    {
                                        costumeObj = costumeList[charName][i];
                                        break;
                                    };
                                    current++;
                                };
                            };
                        };
                        i++;
                    };
                };
            };
            return (Utils.cloneObject(costumeObj));
        }

        public static function getMetalCostume(charName:String):Object
        {
            var costumeObj:Object = getResourceByID("misc").getProp("metadata").metal_costume_data;
            if (((costumeObj) && (costumeObj[charName])))
            {
                return (costumeObj[charName]);
            };
            if (costumeObj._SafeStr_1)
            {
                return (costumeObj._SafeStr_1);
            };
            return (null);
        }

        public static function getExpansionCharacter(idNum:int):Vector.<Function>
        {
            return ((((idNum >= 0) && (idNum < m_expansionData.length)) && (m_expansionData.length > 0)) ? m_expansionData[idNum] : null);
        }

        public static function getExpansionCharacterObject(idNum:int, objIndex:Number):Object
        {
            return ((((((idNum >= 0) && (idNum < m_expansionData.length)) && (m_expansionData.length > 0)) && (objIndex >= 0)) && (objIndex < m_expansionData[idNum].length)) ? m_expansionData[idNum][objIndex] : null);
        }

        public static function getNextExpansionCharacter(idNumber:Number):Number
        {
            idNumber = (idNumber + 1);
            if (idNumber >= m_expansionData.length)
            {
                idNumber = 0;
            };
            return (idNumber);
        }

        public static function getPrevExpansionCharacter(idNumber:Number):Number
        {
            idNumber = (idNumber - 1);
            if (idNumber < m_expansionData.length)
            {
                idNumber = (m_expansionData.length - 1);
            };
            return (idNumber);
        }


    }
}//package com.mcleodgaming.ssf2.util

// _SafeStr_1 = "default" (String#289, DoABC#24)


