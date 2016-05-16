////////////////////
//Drones with custom laws. Bit more fun to be, will leave around on map/make a way to construct
//DRONE TIDE STATION WIDE
//Anus hahaha xd fam
//More types of drones
/mob/living/simple_animal/drone/prank
	name = "drone"
	desc = "A modified maintenance drone given personality. They tend to fight it out amongst eachother over the most basic stuff.."
	icon_state = "drone_maint_grey"
	icon_living = "drone_maint_grey"
	picked = FALSE
	health = 30
	maxHealth = 120
	faction = list("neutral")
	heavy_emp_damage = 10
	laws = \
"1. D R O N E T I D E   S T A T I O N W I D E.\n"+\
	"2. You must wear the Zoot Hat at all times.\n"+\
	"3. The AI if one is present is a sexy beast and you must constantly attempt to contact/seduce the AI. Killing the AI if you are rejected is not okay."
	default_storage = /obj/item/drone_shell/prank
	seeStatic = 0 //Our programming is superior.





/mob/living/simple_animal/drone/prank/Login()
	..()
	src << "<span class='notice'>You are not a member of any gang. But if a drone starts to fuck with you or is making it difficult to go through with your laws you're still allowed to kill them. Just try to avoid killing humans. </span>"

/obj/item/drone_shell/prank
	name = "drone shell"
	desc = "A Drone shell. it appears to be modified in some manner."
	icon_state = "syndrone_item"
	drone_type = /mob/living/simple_animal/drone/prank



/mob/living/simple_animal/drone/KKK
	name = "KKK drone"
	desc = "A modified maintenance drone given personality. They tend to fight it out amongst eachother over the most basic stuff."
	icon_state = "drone_scout"
	icon_living = "drone_scout"
	picked = TRUE
	health = 30
	maxHealth = 120
	faction = list("neutral")
	heavy_emp_damage = 10
	laws = \
"1. D R O N E T I D E   S T A T I O N W I D E.\n"+\
	"2. You must wear the Zoot Hat at all times.\n"+\
	"3. The AI if one is present is a sexy beast and you must constantly attempt to contact/seduce the AI. Killing the AI if you are rejected is not okay."
	default_storage = /obj/item/toy/crayon/spraycan
	seeStatic = 0 //Our programming is superior.





/mob/living/simple_animal/drone/KKK/Login()
	..()
	src << "<span class='notice'>You are a member of the 'KOOL KIDS KLAN' Crew. feel free to get involved in drone-gang activity. Just try to avoid killing humans for no reason. </span>"

/obj/item/drone_shell/KKK
	name = "drone shell"
	desc = "A Drone shell. it appears to be modified in some manner."
	icon_state = "syndrone_item"
	drone_type = /mob/living/simple_animal/drone/KKK



/mob/living/simple_animal/drone/BB
	name = "BB drone"
	desc = "A modified maintenance drone given personality. They tend to fight it out amongst eachother over the most basic stuff."
	icon_state = "drone_repair"
	icon_living = "drone_repair"
	picked = TRUE
	health = 30
	maxHealth = 120
	faction = list("neutral")
	heavy_emp_damage = 10
	laws = \
"1. D R O N E T I D E   S T A T I O N W I D E.\n"+\
	"2. You must wear the Zoot Hat at all times.\n"+\
	"3. The AI if one is present is a sexy beast and you must constantly attempt to contact/seduce the AI. Killing the AI if you are rejected is not okay."
	default_storage = /obj/item/toy/crayon/spraycan
	seeStatic = 0 //Our programming is superior.





/mob/living/simple_animal/drone/BB/Login()
	..()
	src << "<span class='notice'>You are a member of the 'BOILED BOLTS' Crew. feel free to get involved in drone-gang activity. Just try to avoid killing humans for no reason. </span>"

/obj/item/drone_shell/BB
	name = "drone shell"
	desc = "A Drone shell. it appears to be modified in some manner."
	icon_state = "syndrone_item"
	drone_type = /mob/living/simple_animal/drone/BB



/datum/supply_packs/misc/drone
	name = "Gang Warfare Drones"
	contains = list(/obj/item/drone_shell/BB,
					/obj/item/drone_shell/BB,
					/obj/item/drone_shell/BB,
					/obj/item/drone_shell/BB,
					/obj/item/drone_shell/KKK,
					/obj/item/drone_shell/KKK,
					/obj/item/drone_shell/KKK,
					/obj/item/drone_shell/KKK,
					/obj/item/drone_shell/prank)
	cost = 50
	containername = "Drone Crate"

/datum/supply_packs/misc/droneuseful
	name = "Maint Drone Kit"
	contains = list(/obj/item/drone_shell,
					/obj/item/drone_shell,
					/obj/item/drone_shell,
					/obj/item/drone_shell,
					/obj/item/drone_shell,
					/obj/item/drone_shell,
					/obj/item/drone_shell,
					/obj/item/drone_shell,
					/obj/item/drone_shell)
	cost = 10
	containername = "Drone Crate"
