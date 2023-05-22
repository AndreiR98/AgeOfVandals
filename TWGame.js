//<![CDATA[

/** General purpose map script variables **/

TWMap.premium = false;
TWMap.mobile = false;
TWMap.morale = false;
TWMap.night = false;
TWMap.classic_gfx = false; // Needed to display day borders if user activated classic graphics

TWMap.scrollBound = {
    x_min: 0,
    x_max: 999,
    y_min: 0,
    y_max: 999
};

TWMap.tileSize = [53, 38];

TWMap.screenKey = '2613b85b';
TWMap.topoKey = 3996689503;
TWMap.con.CON_COUNT = 10;
TWMap.con.SEC_COUNT = 20;
TWMap.con.SUB_COUNT = 5;

TWMap.image_base = 'https://dsen.innogamescdn.com/asset/0b510d15/graphic/';
TWMap.graphics = 'https://dsen.innogamescdn.com/asset/0b510d15/graphic///map_new/';

TWMap.currentVillage = 7157;
TWMap.cachePopupContents = true;

TWMap.minimap_cache_stamp = 1;


/** Context menu **/

TWMap.context._ownOrder = ["mp_info","mp_recruit","mp_profile","mp_overview","mp_fav","mp_res","mp_att","mp_farm_a","mp_farm_b"];
TWMap.context._otherOrder = ["mp_info","mp_lock","mp_profile","mp_msg","mp_fav","mp_res","mp_att","mp_farm_a","mp_farm_b"];
TWMap.urls.ctx = {};
TWMap.urls.ctx.mp_overview = '/game.php?village=__village__&screen=overview';
TWMap.urls.ctx.mp_info = '/game.php?village=7157&screen=info_village&id=__village__';
TWMap.urls.ctx.mp_fav = '/game.php?village=7157&screen=info_village&id=__village__&ajaxaction=add_target&json=1&h=2613b85b';
TWMap.urls.ctx.mp_unfav = '/game.php?village=7157&screen=info_village&id=__village__&ajaxaction=del_target&json=1&h=2613b85b';
TWMap.urls.ctx.mp_lock = '/game.php?village=7157&screen=info_village&id=__village__&ajaxaction=toggle_reserve_village&json=1&h=2613b85b';
TWMap.urls.ctx.mp_res = '/game.php?village=7157&screen=market&mode=send&target=__village__';
TWMap.urls.ctx.mp_att = '/game.php?village=7157&screen=place&target=__village__';
TWMap.urls.ctx.mp_recruit = '/game.php?village=7157&screen=train&village=__village__';
TWMap.urls.ctx.mp_profile = '/game.php?village=7157&screen=info_player&id=__owner__';
TWMap.urls.ctx.mp_msg = '/game.php?village=7157&screen=mail&mode=new&player=__owner__';
TWMap.urls.ctx.mp_unlock = TWMap.urls.ctx.mp_lock;
TWMap.urls.ctx.mp_invite = '/game.php?village=7157&screen=settings&mode=ref&source=map';
TWMap.urls.ctx.mp_invite_hide = '/game.php?village=7157&screen=settings&ajaxaction=map_hide_invitation&json=1&h=2613b85b';


TWMap.ghost = false;

TWMap.context.enabled = true;

/** Other URLs **/

TWMap.urls.villageInfo = '/game.php?village=7157&screen=info_village&id=__village__';
TWMap.urls.villagePopup = '/game.php?village=7157&screen=map&ajax=map_info&source=7157&target=__village__';
TWMap.urls.sizeSave = '/game.php?village=7157&screen=settings&ajaxaction=set_map_size&&h=2613b85b';
TWMap.urls.changeShowBelief = '/game.php?village=7157&screen=settings&ajaxaction=change_topo_show_belief&&h=2613b85b';
TWMap.urls.changeShowPolitical = '/game.php?village=7157&screen=settings&ajaxaction=change_topo_show_political&&h=2613b85b';
TWMap.urls.changeUseContext = '/game.php?village=7157&screen=settings&ajaxaction=change_use_contextmenu&&h=2613b85b';
TWMap.urls.savePopup = '';

/** Attacked villages **/

/** Village colors **/

TWMap.colors['this'] = [255, 255, 255];
TWMap.colors['player'] = [240, 200, 0];
TWMap.colors['friend'] = [69, 255, 146];
TWMap.colors['ally'] = [0, 0, 244];
TWMap.colors['partner'] = [0, 160, 244];
TWMap.colors['nap'] = [128, 0, 128];
TWMap.colors['enemy'] = [244, 0, 0];
TWMap.colors['other'] = [130, 60, 10];
TWMap.colors['sleep'] = [0, 0, 0];
TWMap.colors['grey'] = [150, 150, 150];
TWMap.colors['stronghold'] = [10, 150, 150];
TWMap.colors['highlight_village'] = [255, 0, 255];
TWMap.colors['highlight_player'] = [239, 165, 239];

TWMap.GreatSiege.setSiegeVillageIds([]);
TWMap.GreatSiege.setDistances(
    3,
    15
);

TWMap.inline_send.enabled = 1;

TWMap.ignore_villages = [];

TWMap.non_attackable_players = ["198577","3885863","7695291","8154998","9150197","9811059","9944715","10452473","10514110","10832072","11029881","11085011","11168411","11200820","11256584","11376151","11382771","11409561","11482122","11488117","11571616","11575488","11594704","848901653","848918662","848940756","848942234","849009635","849023437","849029156","849032926","849066161","849079116","849083114","849100090","849119389","849125743","849135533","849139020","849140316","849148640","849153015","849153054","849153373","849153537","849154837","849155107","849156594","849156670","849156953","849157403","849157415","849157575","849157578","849157850","849157867","849158363","849158885","849160492","849161251","849161305","849161338","849161450","849161488","849161502","849161555","849161559","849161575","849161631","849161636","849161652","849161659","849161708","849161728","849161736","849161765","849161770"];
TWMap.non_attackable_villages = [];

TWMap.bonus_data = {"1":{"text":"100% higher wood production","image":"https:\/\/dsen.innogamescdn.com\/asset\/0b510d15\/graphic\/bonus\/wood.png"},"2":{"text":"100% higher clay production","image":"https:\/\/dsen.innogamescdn.com\/asset\/0b510d15\/graphic\/bonus\/stone.png"},"3":{"text":"100% higher iron production","image":"https:\/\/dsen.innogamescdn.com\/asset\/0b510d15\/graphic\/bonus\/iron.png"},"4":{"text":"10% more population","image":"https:\/\/dsen.innogamescdn.com\/asset\/0b510d15\/graphic\/bonus\/farm.png"},"5":{"text":"33% faster recruitment in the Barracks","image":"https:\/\/dsen.innogamescdn.com\/asset\/0b510d15\/graphic\/bonus\/barracks.png"},"6":{"text":"33% faster recruitment in the Stable","image":"https:\/\/dsen.innogamescdn.com\/asset\/0b510d15\/graphic\/bonus\/stable.png"},"7":{"text":"50% faster recruitment in the Workshop","image":"https:\/\/dsen.innogamescdn.com\/asset\/0b510d15\/graphic\/bonus\/garage.png"},"8":{"text":"30% more resources are produced (all resource types)","image":"https:\/\/dsen.innogamescdn.com\/asset\/0b510d15\/graphic\/bonus\/all.png"},"9":{"text":"50% more storage capacity and merchants","image":"https:\/\/dsen.innogamescdn.com\/asset\/0b510d15\/graphic\/bonus\/storage.png"}};
TWMap.images = ["gras1.png","gras2.png","gras3.png","gras4.png","v1_left.png","v1.png","v2_left.png","v2.png","v3_left.png","v3.png","v4_left.png","v4.png","v5_left.png","v5.png","v6_left.png","v6.png","b1_left.png","b1.png","b2_left.png","b2.png","b3_left.png","b3.png","b4_left.png","b4.png","b5_left.png","b5.png","b6_left.png","b6.png","berg1.png","berg2.png","berg3.png","berg4.png","forest0000.png","forest0001.png","forest0010.png","forest0011.png","forest0100.png","forest0101.png","forest0110.png","forest0111.png","forest1000.png","forest1001.png","forest1010.png","forest1011.png","forest1100.png","forest1101.png","forest1110.png","forest1111.png","see.png","event_xmas.png","event_easter.png","ghost.png","event_merchant.png","event_wizard.png","event_easter2014.png","event_fall2014.png","rune_village.png","citynw.png","cityne.png","citysw.png","cityse.png","cityn1.png","cityn2.png","citye1.png","citye2.png","citys1.png","citys2.png","cityw1.png","cityw2.png","citym1.png","citym2.png","citym3.png","citym4.png","citye3.png","citye4.png","cityw3.png","cityw4.png","citym5.png","citym6.png","citym7.png","citym8.png","citym9.png","citym10.png","stronghold0.png","stronghold1.png","stronghold2.png","stronghold3.png","stronghold4.png","university.png"];

/** Some sector fun **/
TWMap.sectorPrefech = [{"x":420,"y":540,"tiles":[[32,0,3,1,0,1,1,33,3,1,3,0,1,3,2,0,3,1,1,1],[2,33,3,0,2,3,0,36,0,0,2,1,1,2,30,31,3,48,2,2],[2,36,2,2,0,0,3,1,3,1,3,3,3,3,29,28,1,1,2,0],[3,0,0,32,2,1,2,0,2,33,1,0,0,32,1,1,40,34,0,0],[3,3,1,1,2,32,1,1,1,37,3,2,0,0,2,1,1,2,3,1],[2,41,34,1,3,1,3,0,1,37,2,1,2,3,1,1,0,2,3,1],[1,36,3,1,3,33,3,1,3,36,0,2,1,1,2,32,1,33,0,0],[1,1,2,2,3,36,2,1,1,1,0,3,2,3,3,3,41,39,3,1],[40,42,34,1,1,3,3,0,33,3,0,1,1,1,0,2,44,46,34,3],[1,2,3,0,1,2,41,42,38,2,32,2,41,35,2,3,0,0,48,3],[1,1,0,48,2,40,38,3,2,0,3,1,44,47,34,3,1,48,3,0],[0,2,3,2,2,0,2,33,1,3,30,31,0,37,2,2,0,0,1,2],[2,2,3,0,1,3,1,36,1,1,29,28,3,37,2,1,1,0,3,2],[2,0,0,0,1,2,2,1,40,34,2,3,1,45,34,0,3,0,30,31],[3,3,0,2,3,2,3,1,0,1,3,2,1,37,3,2,33,2,29,28],[3,2,2,2,0,1,0,33,0,0,1,3,2,37,2,2,36,2,3,2],[2,32,0,1,1,3,41,46,43,34,1,3,3,36,1,1,3,3,0,3],[0,3,1,1,3,41,39,1,36,0,0,2,3,2,40,35,3,0,2,2],[40,34,0,2,1,45,46,35,2,1,3,1,1,1,1,36,0,3,0,1],[1,0,3,3,2,36,0,44,34,1,2,0,3,1,3,0,1,3,2,1]],"data":{"x":420,"y":540,"villages":{"10":{"4":["6920",5,"Shaflones village","57","11448805",42,null,"0",null,null,"standard","0"]},"11":{"2":["6756",8,0,"1.023","0",42,null,"0",null,null,"standard",null],"3":["7035",4,0,"155","0",42,null,"0",null,null,"standard",null],"4":["6770",8,0,"1.001","0",42,null,"0",null,null,"standard",null]},"12":{"1":["6575",5,"capone1s village","45","11601389",42,null,"0",null,null,"standard","0"],"9":["7157",5,"legend meanss village","21","849009635",42,null,"0",null,null,"standard","0"]},"13":{"1":["6830",5,"AAgunner7Bs village","229","849154654",42,null,"0",null,null,"standard","0"],"3":["6645",8,0,"1.007","0",42,null,"0",null,null,"standard",null]},"14":{"3":["6295",5,"Kriegeers village","21","849048240",42,null,"0",null,null,"standard","64"],"4":["6896",6,0,"391","0",42,null,"0",null,null,"standard",null],"9":["6952",6,0,"363","0",42,null,"0",null,null,"standard",null],"10":["7136",5,"CrownMes village","21","849100090",42,null,"0",null,null,"standard","0"]},"15":{"3":["6160",8,0,"1.038","0",42,null,"0",null,null,"standard",null],"4":["6302",8,0,"1.017","0",42,null,"0",null,null,"standard",null]},"16":{"0":["5774",9,"051. Barbarian village","2.140","849153121",42,null,"0",null,null,"standard","27"],"2":["6370",5,"Mad Titans village","59","849145149",42,null,"0",null,null,"standard","0"],"4":["6719",5,"LailaNuggets village","63","11368886",42,null,"0",null,null,"standard","0"],"15":["7159",5,"backdoortonys village","42","8154998",42,null,"0",null,null,"standard","0"]},"17":{"4":["5968",8,0,"1.009","0",42,null,"0",null,null,"standard",null],"7":["6406",5,"Fr33trippers village","63","849157787",42,null,"0",null,null,"standard","0"]},"18":{"2":["5634",6,0,"967","0",42,null,"0",null,null,"standard",null],"10":["6404",9,"058","2.825","3916550",42,null,"0",null,null,"standard","27"],"13":["6762",6,0,"833","0",42,null,"0",null,null,"standard",null]},"19":{"0":["5526",9,"Barbarian village","1.017","849089672",42,null,"0",null,null,"standard","15"],"1":["5583",11,"Glavni","8.272","10675040",42,null,"0",null,null,"standard","120"],"2":["6079",5,"BrownDog82s village","21","3299408",42,null,"0",null,null,"standard","0"],"4":["5669",13,"Glavni","9.968","10675040",42,null,"0",null,null,"standard","120"],"9":["6759",7,"Etownbudmans village","359","849149643",42,null,"0",null,null,"standard","0"]}},"players":{"198577":["orsamannen","83","105","tomorrow at 07:53",false,"0","1 Village"],"1160381":["DaPinkMaster","1.071","105",0,false,"0","1 Village"],"2489459":["kuyokot","9.782","312",0,false,"249088","2 Villages"],"3299408":["BrownDog82","21","0",0,false,"0","1 Village"],"3916550":["Snuff1997","586.459","27",0,false,"0","69 Villages"],"7777380":["NickBielli","909.694","120",0,false,"1","101 Villages"],"8154998":["backdoortony","42","0","on 24.05. at 13:27",false,"0","1 Village"],"9570793":["cpv rocka","21","6",0,false,"0","1 Village"],"9811059":["EagleOfDeath","118","0","tomorrow at 22:46",false,"0","1 Village"],"9906394":["Hettra","985.693","27",0,false,"249383","121 Villages"],"10675040":["luzer11","449.656","120",0,false,"0","48 Villages"],"11235787":["bouncy","51","0",0,false,"0","1 Village"],"11293057":["Constantin","364.355","27",0,false,"248577","43 Villages"],"11350540":["TSUNAMiC","164","243",0,false,"3","1 Village"],"11361888":["jvetle01","227","0",0,false,"0","1 Village"],"11364013":["Old44","144","0",0,false,"0","1 Village"],"11365124":["Finalownage","21","0",0,false,"0","1 Village"],"11368886":["LailaNugget","63","0",0,false,"0","1 Village"],"11401765":["cokomoko","311.250","27",0,false,"0","37 Villages"],"11414274":["Lord AmbeR1","58","0",0,false,"0","1 Village"],"11448805":["Shaflone","57","0",0,false,"0","1 Village"],"11467586":["varg veum","136","0",0,false,"0","1 Village"],"11521230":["swordanqer","734","0",0,false,"0","1 Village"],"11522507":["krillin","280","105",0,false,"0","1 Village"],"11575488":["boybye","62","0","tomorrow at 18:28",false,"0","1 Village"],"11598209":["DennisDG97","393","105",0,false,"0","1 Village"],"11601389":["capone1","45","0",0,false,"0","1 Village"],"848961900":["SteamUser1610199070","46","0",0,false,"0","1 Village"],"849009635":["legend means","21","0","on 24.05. at 13:17",false,"0","1 Village"],"849048240":["Kriegeer","21","64",0,false,"0","1 Village"],"849054239":["Wulo1993","51","257",0,false,"0","1 Village"],"849064486":["Blizzard","21","214",0,false,"0","1 Village"],"849074996":["gamsOnline","59","0",0,false,"14","1 Village"],"849089672":["Bitcoin","3.217","15",0,false,"0","5 Villages"],"849093083":["bulimk","134","0",0,false,"0","1 Village"],"849100090":["CrownMe","21","0","on 24.05. at 08:28",false,"248583","1 Village"],"849127207":["Mr-Greg","76","238",0,false,"0","1 Village"],"849128526":["Theraflu","21","0",0,false,"0","1 Village"],"849132148":["gerasimos","21","0",0,false,"0","1 Village"],"849132345":["Vipvip","47","0",0,false,"0","1 Village"],"849132777":["acirilia","915.464","27",0,false,"249496","94 Villages"],"849132996":["mjschurm","25","0",0,false,"0","1 Village"],"849145149":["Mad Titan","59","0",0,false,"0","1 Village"],"849146387":["BlazerNox","94","0",0,false,"0","1 Village"],"849146839":["R0cki99","21","0",0,false,"0","1 Village"],"849147406":["ivoo","463.018","27",0,false,"3","56 Villages"],"849147541":["Sir Marvi D Kram","21","0",0,false,"0","1 Village"],"849149643":["Etownbudman","359","0",0,false,"0","1 Village"],"849153121":["1234567890","381.629","27",0,false,"0","53 Villages"],"849153197":["JakkBlakk","21","55",0,false,"3","1 Village"],"849153404":["Grelod the Kind","1.286.743","120",0,false,"248308","132 Villages"],"849153482":["Kaseopeia","41","0",0,false,"0","1 Village"],"849154654":["AAgunner7B","229","0",0,false,"0","1 Village"],"849154727":["yeryoyoyer","178","0",0,false,"0","1 Village"],"849155286":["Allahu Akbar","201","238",0,false,"23","1 Village"],"849155381":["Xdabik","937","105",0,false,"0","1 Village"],"849156039":["Yemreyarici","21","0",0,false,"0","1 Village"],"849157036":["XSilverX","83","0",0,false,"0","1 Village"],"849157072":["Fear Thorn","305","0",0,false,"0","1 Village"],"849157430":["princesstinhie","271","0",0,false,"0","1 Village"],"849157787":["Fr33tripper","63","0",0,false,"0","1 Village"],"849158351":["PonsterMenis","21","0",0,false,"0","1 Village"],"849158448":["amdtolorio","194","0",0,false,"0","1 Village"],"849158630":["Hacker96","47","0",0,false,"0","1 Village"],"849159226":["dancob","42","0",0,false,"0","1 Village"],"849160212":["nokeskadokes","277","0",0,false,"0","1 Village"],"849160610":["Lifeless","50","0",0,false,"0","1 Village"],"849160641":["thirawat","75","0",0,false,"0","1 Village"],"849161555":["Bari89","124","0","tomorrow at 06:06",false,"0","1 Village"]},"allies":{"6":["STING","21","VENOM","248375"],"15":["LEGACY","3.301","LEGACY","248147"],"27":["Family 2","5.583.717","F2MILY","250707"],"55":["Ponies","21","Pony","248176"],"64":["1923","42","1923","248367"],"105":["0000","3.205","000","0"],"120":["FAMILY","11.152.222","FAMILY","250582"],"214":["The Underdogs","21","DOGS","249078"],"238":["1st Battalion","680","1BT","0"],"243":["1812 French Empire","1.007","1812","249172"],"257":["Do not give up","136","DGU","0"],"312":["Notnon-Aligned-movemwnt","9.782","FAMLY","0"]}}}];


//]]>