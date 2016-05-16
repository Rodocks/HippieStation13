

//structures

/obj/structure/stool/barstool
	icon =  'icons/custom/objects.dmi'
	icon_state = "stool"
	name = "Bar Stool"
	desc = "original stool donut steal"

/obj/structure/Deco
	name = "Decorations"
	desc = "Christmas time is almost here."
	icon = 'icons/custom/xmas.dmi'
	icon_state = "generic"
	density = 0
	anchored = 1
	layer = 5.0

/obj/structure/Decolight
	name = "Christmas lights"
	desc = "Christmas time is almost here."
	icon = 'icons/custom/xmas.dmi'
	icon_state = "lights"
	density = 0
	anchored = 1
	layer = 5.0
//items
/obj/item/gnome
	name = "Gnome Chompski"
	desc = "Shove that cunt in a rocket"
	icon = 'icons/custom/objects.dmi'
	icon_state = "gnome"


//Turfs/Walls
/turf/simulated/floor/russianbullshit/edge
	name = "Floor"
	desc = "A non descript floor tile."
	icon = 'icons/custom/edgefloor.dmi'

/turf/simulated/floor/russianbullshit/wondercock
	name = "Floor"
	desc = "A non descript floor tile."
	icon = 'icons/custom/wonderworkfloor.dmi'

/turf/simulated/floor/russianbullshit/lifeweeb
	name = "Floor"
	desc = "A non descript floor tile."
	icon = 'icons/custom/superedge.dmi'

/turf/simulated/floor/urist/
	name = "Floor"
	desc = "Where you feet go, or your head if your shit"
	icon = 'icons/urist/turf/uristturf.dmi'
	icon_state = "artnouveauwave"

/turf/simulated/wall/cave_snow
	name = "Snowy cave wall"
	desc = "It's cold to the touch."
	icon = 'icons/custom/caves_snow.dmi'

//Jungle shit
/turf/simulated/floor/templefloor
	name = "Stone Floor"
	desc = "Very old stone floor covered in moss"
	icon = 'icons/urist/jungle/turfs.dmi'
	icon_state = "templefloor"

/turf/simulated/floor/jungle
	name = "Grass"
	desc = "Dark tall grass"
	icon = 'icons/urist/jungle/jungle.dmi'
	icon_state = "grass1"

/turf/simulated/floor/jungle/swamp
	name = "Murky Water"
	desc = "Murky Water, can't see anything inside of it"
	icon_state = "rivernew"
	icon = 'icons/urist/jungle/turfs.dmi'

/turf/indestructible/water
	name = "Murky Water"
	desc = "Murky Water, This triggers you auqaphobia so you can't swim in it"
	icon_state = "rivernew"
	icon = 'icons/urist/jungle/turfs.dmi'

/turf/indestructible/temple
	name = "Old Wall"
	desc = "Looks older than you are!"
	icon_state = "templewall"
	icon = 'icons/urist/jungle/turfs.dmi'

/obj/structure/Goonshuttle/mossy
	name = "Shuttle Cockpit"
	desc = "Old Mossy and Broken just like Your Nan XDDD"
	icon = 'icons/urist/jungle/goonshuttle.dmi'
	anchored = 1
	pressure_resistance = 4*ONE_ATMOSPHERE //so the shuttle is not airless
/obj/structure/Goonshuttle/mossy
	name = "Shuttle Cockpit"
	desc = "HMMMMMMMMMMMM"
	icon = 'icons/urist/jungle/goonshuttle.dmi'
	anchored = 1
	pressure_resistance = 4*ONE_ATMOSPHERE //so the shuttle is not airless

/turf/simulated/wall/shuttle/overun
	name = "Old Shuttle wall"
	desc = ""
	icon_state = "wall"
	icon = 'icons/urist/jungle/overun.dmi'

/obj/structure/window/reinforced/overun
	name = "old reinforced window"
	desc = "Looks like it has been weaken over the years"
	icon = 'icons/urist/jungle/overun.dmi'
	icon_state = "glass"
	maxhealth = 20
	explosion_block = 1

/turf/simulated/floor/plasteel/shuttle/overun
	name = "Old Shuttle floor"
	desc = "Looks almost as old as You are"
	icon_state = "floor"
	icon = 'icons/urist/jungle/overun.dmi'

/turf/indestructible/temple/shuttle
	name = "Old airlock"
	desc = "The moss jammed it"
	icon_state = "door"
	icon = 'icons/urist/jungle/overun.dmi'

/obj/structure/Deco/miniputt
	name = "Debris"
	desc = "You have never seen any pod like this before"
	icon = 'icons/urist/jungle/overun.dmi'
	icon_state = "miniputt"
	density = 0
	anchored = 1

/obj/structure/flora/tree/jungle_small
	icon = 'icons/urist/jungle/trees-small.dmi'
	New()
		icon_state = pick("tree1","tree2","tree3","tree4","tree5","tree6","tree7","tree8","tree9","tree10")
//end of jungle shit

/turf/simulated/floor/carpetpurple
	name = "Carpet"
	icon = 'icons/custom/purple.dmi'
	icon_state = "carpet"
	floor_tile = /obj/item/stack/tile/carpet/purple
	broken_states = list("damaged")
	smooth = SMOOTH_TRUE
	canSmoothWith = null

/obj/item/stack/tile/carpet/purple
	name = "carpet"
	singular_name = "carpet"
	desc = "A piece of carpet. It is the same size as a floor tile."
	icon = 'icons/custom/objects.dmi'
	icon_state = "tile-purple"
	turf_type = /turf/simulated/floor/carpetpurple
	burn_state = 0 //Burnable

/obj/machinery/vending/pizza
	name = "PizzaFlat"
	desc = "Pizza machine only on a PizzaFlat Ñorporation. With a taste of Italy."
	icon = 'icons/custom/vending.dmi'
	icon_state = "pizzavend"
	refill_canister = /obj/item/weapon/vending_refill/snack
	products = list(/obj/item/pizzabox/margherita = 3,/obj/item/pizzabox/meat = 4,/obj/item/pizzabox/mushroom = 2,)
	premium = list(/obj/item/pizzabox/vegetable = 1)
	contraband = list(/obj/item/weapon/reagent_containers/food/snacks/pizza/donkpocket = 3,/obj/item/weapon/reagent_containers/food/snacks/pizza/dank = 1,)

/area/testingarea/hallway/
	name = "\improper Derelict Primary Hallway"
	icon_state = "hallP"

/area/testingarea/cafeteria
	name = "\improper Derelict Cafeteria"
	icon_state = "cafeteria"

/area/testingarea/crew_quarters
	name = "\improper Derelict Dormitories"
	icon_state = "Sleep"

/area/testingarea/hydroponics
	name = "Derelict Hydroponics"
	icon_state = "hydro"

/area/testingarea/eva
	name = "Derelict EVA Storage"
	icon_state = "eva"

/area/testingarea/engineering
	name = "Derelict Engineering"
	icon_state = "engine"

/area/testingarea/locker
	name = "\improper Derelict Locker Room"
	icon_state = "locker"

/area/testingarea/medbay
	name = "Derelict Medbay"
	icon_state = "medbay"
	music = 'sound/ambience/signal.ogg'

/obj/machinery/door/airlock/old/
	icon = 'icons/custom/door/old/Doorold.dmi'
	doortype = /obj/structure/door_assembly/door_assembly_old

/obj/structure/door_assembly/door_assembly_old
	name = "airlock assembly"
	icon = 'icons/custom/door/door_assembly.dmi'
	icon_state = "door_as_oldstyle0"
	overlays_file = 'icons/custom/door/old/overlays.dmi'
	typetext = "old"
	icontext = "old"
	airlock_type = /obj/machinery/door/airlock/old/
	anchored = 1
	state = 1

/obj/structure/closet/crate/bedbox
	desc = "A Box."
	name = "Box"
	icon = 'icons/custom/crates.dmi'
	icon_crate = "crate"
	icon_state = "crate"

/area/template/pmc/dd/
	name = "\improper Shuttle"
	requires_power = 0
	lighting_use_dynamic = DYNAMIC_LIGHTING_ENABLED
	has_gravity = 1
	valid_territory = 0
	icon = 'icons/custom/objects.dmi'
	icon_state = "DD"

/obj/structure/ladder/helicopter
	name = "ladder"
	desc = "Spriting sure is hard work."
	icon = 'icons/custom/peaquad.dmi'
	icon_state = "sos"

/turf/simulated/floor/plating/beach/sand/desert
	name = "Sand"
	icon = 'icons/custom/beach.dmi'
	icon_state = "desert"
	baseturf = "/turf/simulated/floor/plating/beach/sand/desert"

	/turf/simulated/floor/plating/beach/sand/desert/attackby(obj/item/weapon/W, mob/user, params)
	var/obj/road/S = new



/turf/simulated/floor/plating/beach/sand/desert/road
	name = "Sand"
	color = "#F5935F"
	icon = 'icons/urist/turf/floors+.dmi'
	icon_state = "wasteland32"
	baseturf = "/turf/simulated/floor/plating/beach/sand/desert"

/obj/road
	name = "Sand"
	color = "#F5935F"
	icon = 'icons/urist/turf/floors+.dmi'
	icon_state = "wasteland32"
	density = 0
	anchored = 0

/turf/indestructible/fakewater
	name = "Water"
	desc = "Looks deep, Doubt you can swim in it."
	icon = 'icons/custom/beach.dmi'
	icon_state = "seadeep"
	opacity = 0

/turf/indestructible/fakewaterwall
	name = "Water"
	desc = "Looks deep, Doubt you can swim in it."
	icon = 'icons/custom/beach.dmi'
	icon_state = "seadeep"
	opacity = 1

/turf/indestructible/edge
	name = "Edge"
	desc = "You feel like you should stand on it like the prophets once said."
	icon = 'icons/custom/objects.dmi'
	icon_state = "edge"
	opacity = 0

/turf/simulated/wall/Tent
	name = "Tent"
	desc = "What a tent is made out of"
	icon = 'icons/custom/objects.dmi'
	icon_state = "Wall_Tent"
	baseturf = "/turf/simulated/floor/plating/beach/sand/desert"



//TENT//
/obj/item/weapon/survivalcapsule/tent
	name = "bluespace tent capsule"
	desc = "A tent stored within a pocket of bluespace."
	icon_state = "Tent_rolled"
	icon = 'icons/custom/objects.dmi'

/obj/item/weapon/survivalcapsule/attack_self()
	if(used == FALSE)
		src.loc.visible_message("The [src] begins to shake. Stand back!")
		playsound(get_turf(src), 'sound/custom/shake.ogg', 50, 1)
		used = TRUE
		sleep(50)
		playsound(get_turf(src), 'sound/effects/phasein.ogg', 100, 1)
		PoolOrNew(/obj/effect/particle_effect/smoke, src.loc)
		qdel(src)

/obj/item/weapon/tent/proc/load()
	var/turf/start_turf = get_turf(src.loc)
	var/turf/cur_turf
	var/x_size = 5
	var/y_size = 5
	var/list/walltypes = list(/turf/simulated/wall/Tent)
	var/floor_type = /turf/simulated/floor/plating/beach/sand/desert
	var/room

	//Center the room/spawn it
	start_turf = locate(start_turf.x -2, start_turf.y - 2, start_turf.z)

	room = spawn_room(start_turf, x_size, y_size, walltypes, floor_type, "Tent Shelter")

	start_turf = get_turf(src.loc)

	//Fill it
	cur_turf = locate(start_turf.x+1, start_turf.y, start_turf.z)
	new /obj/structure/table/wood(cur_turf)
	new /obj/item/weapon/storage/pill_bottle/dice(cur_turf)

	cur_turf = locate(start_turf.x+1, start_turf.y-1, start_turf.z)
	var/obj/structure/bed/chair/C = new /obj/structure/bed/chair/(cur_turf)
	C.dir = 1

	cur_turf = locate(start_turf.x+1, start_turf.y+1, start_turf.z)
	new /obj/structure/bed/chair/(cur_turf)

	cur_turf = locate(start_turf.x-1, start_turf.y-1, start_turf.z)
	var/obj/machinery/sleeper/S = new /obj/machinery/sleeper(cur_turf)
	S.dir = 4

	cur_turf = locate(start_turf.x-1, start_turf.y, start_turf.z)
	new /obj/structure/table/wood(cur_turf)
	new /obj/item/weapon/storage/box/donkpockets(cur_turf)

	cur_turf = locate(start_turf.x-1, start_turf.y+1, start_turf.z)
	new /obj/structure/table/wood(cur_turf)
	new /obj/machinery/microwave(cur_turf)

	var/area/survivalpod/L = new /area/survivalpod

	var/turf/threshhold = locate(start_turf.x, start_turf.y-2, start_turf.z)
	threshhold.ChangeTurf(/turf/simulated/floor/plating/beach/sand/desert)
	threshhold.blocks_air = 1 //this is used to prevent air leaking out but I have no idea if I should leave this here also your a toss pot jack
	threshhold.oxygen = 21
	threshhold.temperature = 293.15
	threshhold.nitrogen = 82
	threshhold.carbon_dioxide = 0
	threshhold.toxins = 0
	L.contents += threshhold
	threshhold.overlays.Cut()

	var/list/turfs = room["floors"]
	for(var/turf/simulated/floor/A in turfs)
		SSair.remove_from_active(A)
		A.oxygen = 21
		A.temperature = 293.15
		A.nitrogen = 82
		A.carbon_dioxide = 0
		A.toxins = 0
		A.air.oxygen = 21
		A.air.carbon_dioxide = 0
		A.air.nitrogen = 82
		A.air.toxins = 0
		A.air.temperature = 293.15
		SSair.add_to_active(A)
		A.overlays.Cut()

		L.contents += A


//TENT//

/obj/machinery/door/airlock/shuttle/blue
	icon = 'icons/custom/door/blushuttle/shuttle.dmi'

/turf/simulated/wall/shuttle/blue
	name = "Blue shuttle wall"
	desc = "God is dead"
	icon_state = "wall"
	icon = 'icons/custom/shuttle_blu.dmi'

/turf/simulated/wall/shuttle/green
	name = "Green shuttle wall"
	desc = "added this in when my internet was offline"
	icon_state = "wall4"
	icon = 'icons/custom/shuttlegoon.dmi'

/turf/simulated/floor/plasteel/shuttle/green
	name = "green Shuttle floor"
	desc = "added this in when my internet was offline"
	icon_state = "floor6"
	icon = 'icons/custom/shuttlegoon.dmi'

/turf/simulated/wall/shuttle/greenmultidir
	name = "Green shuttle wall"
	desc = "added this in when my internet was offline"
	icon_state = "wall4dir"
	icon = 'icons/custom/shuttlegoon.dmi'

/turf/simulated/wall/shuttle/orangemultidir
	name = "Green shuttle wall"
	desc = "added this in when my internet was offline"
	icon_state = "wall2dir"
	icon = 'icons/custom/shuttlegoon.dmi'

/turf/simulated/wall/shuttle/blackmultidir
	name = "Black shuttle wall"
	desc = "added this in when my internet was offline"
	icon_state = "wall3dir"
	icon = 'icons/custom/shuttlegoon.dmi'


/turf/simulated/wall/shuttle/normalmultidir
	name = "shuttle wall"
	desc = "added this in when my internet was offline"
	icon_state = "walldir"
	icon = 'icons/custom/shuttlegoon.dmi'

/obj/structure/window/shuttle/normalmultidir
	name = "shuttle window"
	desc = "added this in when my internet was offline."
	icon = 'icons/custom/shuttlegoon.dmi'
	icon_state = "wallwin"
	wtype = "shuttle"
	maxhealth = 120
	fulltile = 1
	reinf = 1
	explosion_block = 1


/obj/structure/shuttlenew
	name = "shuttle"
	icon = 'icons/custom/shuttlegoon.dmi'

/obj/structure/shuttlenew/engine
	name = "engine"
	density = 1
	anchored = 1

/obj/structure/shuttlenew/engine/heater
	name = "heater"
	icon_state = "alt_heater"

/obj/structure/shuttlenew/engine/propulsion
	name = "propulsion"
	icon_state = "alt_propulsion"
	opacity = 1

/obj/structure/window/shuttle/blue
	name = "shuttle window"
	desc = "A reinforced, air-locked pod window."
	icon = 'icons/custom/shuttle_blu.dmi'
	icon_state = "wall5win"
	maxhealth = 120
	fulltile = 1
	reinf = 1
	explosion_block = 1

/obj/structure/closet/secure_closet/hos/kaz
	name = "Kazuhira Miller's locker"
	req_access = list(access_hos)
	icon_state = "hos"

/obj/machinery/computer/shuttle/white_ship/fppshuttle
	name = "Orange Ship Console"
	desc = "Used to control the Orange Ship."
	shuttleId = "fppshuttle"
	possible_destinations = "Orangeship_ss13;Orangeship_home;Orangeship_z4"

/area/template/drugasteroid/
	name = "\improper Drugasteroid"
	requires_power = 0
	has_gravity = 1
	valid_territory = 0
	icon = 'icons/custom/objects.dmi'
	icon_state = "DD"

/area/shuttle/fppshuttle
	name = "Transport Shuttle"

