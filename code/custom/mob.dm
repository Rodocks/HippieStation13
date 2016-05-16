

/mob/living/simple_animal/cockroach
	name = "cockroach"
	desc = "This station is just crawling with bugs."
	icon =  'icons/custom/mobs.dmi'
	icon_state = "cockroach"
	icon_dead = "cockroach"
	health = 1
	maxHealth = 1
	turns_per_move = 5
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 270
	maxbodytemp = INFINITY
	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB
	mob_size = MOB_SIZE_TINY
	response_help  = "pokes"
	response_disarm = "shoos"
	response_harm   = "splats"
	density = 0
	ventcrawler = 2
	gold_core_spawnable = 2
	var/squish_chance = 50

/mob/living/simple_animal/cockroach/death(gibbed)
	if(ticker.cinematic) //If the nuke is going off, then cockroaches are invincible. Keeps the nuke from killing them, cause cockroaches are immune to nukes.
		return
	if(!ckey || gibbed)// stupid staff of change fucking everything up.
		..(1)
		new /obj/effect/decal/cleanable/deadcockroach(src.loc)
		qdel(src)
		return
	else
		..()

/mob/living/simple_animal/cockroach/Crossed(var/atom/movable/AM)
	if(ismob(AM))
		if(isliving(AM))
			var/mob/living/A = AM
			if(A.mob_size > MOB_SIZE_TINY)
				if(prob(squish_chance))
					A.visible_message("<span class='notice'>\The [A] squashed \the [name].</span>", "<span class='notice'>You squashed \the [name].</span>")
					death()
				else
					visible_message("<span class='notice'>\The [name] avoids getting crushed.</span>")
	else
		if(isobj(AM))
			if(istype(AM,/obj/structure))
				visible_message("<span class='notice'>As \the [AM] moved over \the [name], it was crushed.</span>")
				death()

/mob/living/simple_animal/cockroach/ex_act() //Explosions are a terrible way to handle a cockroach.
	return

/obj/effect/decal/cleanable/deadcockroach
	name = "cockroach guts"
	desc = "One bug squashed. Four more will rise in its place."
	icon = 'icons/effects/blood.dmi'
	icon_state = "xfloor1"
	random_icon_states = list("xfloor1", "xfloor2", "xfloor3", "xfloor4", "xfloor5", "xfloor6", "xfloor7")

/mob/living/simple_animal/hostile/fuq
	name = "IT"
	pixel_x = -17
	desc = "Why god. Fuckin why."
	icon = 'icons/custom/fuck.dmi'
	icon_state = "killme"
	icon_living = "killme"
	icon_dead = "killedme"
	speak = list("I'M STILL RELEVANT AND SCARY!","KILL URSELF FUQBOI")
	speak_emote = list("calls out")
	emote_hear = list("yawns.")
	emote_see = list("shakes its head.", "stretches its arms.", "scratches an itch.")
	speak_chance = 7
	turns_per_move = 5
	see_in_dark = 6
	butcher_results = list(/mob/living/simple_animal/cockroach = 4)
	response_help  = "greets"
	response_disarm = "gently pushes aside"
	response_harm   = "struggles against"
	faction = list("myownman")
	attack_same = 1
	attacktext = "smacks"
	attack_sound = 'sound/weapons/punch1.ogg'
	health = 666
	melee_damage_lower = 10
	melee_damage_upper = 10
	environment_smash = 1
	stop_automated_movement_when_pulled = 1
