/obj/item/clothing/suit/coolsuit
	name = "Cool Suit"
	desc = "It smells old. The thought of wearing it sends a chill down your spine."
	icon_state = "coolsuit"
	item_state = "coolsuit"
	item_color = "coolsuit"

	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 100)
	unacidable = 1
/obj/item/clothing/mask/coolmask
	name = "Cool Mask"
	desc = "Oh god you're not gonna put that on your face, are you?"
	icon_state = "coolmask"
	item_state = "coolmask"
	item_color = "coolmask"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 100)
	unacidable = 1
	var/voicechange = 1

/obj/item/clothing/mask/coolmask/speechModification(message)
	if(voicechange)
		message = pick("DON'T BULLY!!", "NO BULLYING!", "DEHUMANIZE YOURSELF AND FACE TO BLOODSHED")
	return message

/obj/item/clothing/suit/armor/defender/intruder
	name = "Intruder Armor"
	desc = "PLACE HOLDER BETA ALPHA"
	icon_state = "intruder_armor"
	item_state = "intruder_armor"
	item_color = "intruder_armor"

/obj/item/clothing/under/pmc/dd/intruder
	name = "Intruder Uniform"
	desc = "PLACE HOLDER BETA ALPHA"
	icon_state = "intruder_uniform"
	item_state = "intruder_uniform"
	item_color = "intruder_uniform"

/obj/item/clothing/mask/balaclava/intruder
	name = "Intruder Uniform"
	desc = "PLACE HOLDER BETA ALPHA"
	icon_state = "intruder_mask"
	item_state = "intruder_mask"
	item_color = "intruder_mask"

/obj/item/clothing/mask/gas/imapactoo
	name = "Odd Gas Mask"
	desc = "The back label says 'Imapigtoo' "
	icon_state = "gas_alt_alt"
	item_state = "gas_alt_alt"
	item_color = "gas_alt_alt"

/obj/item/clothing/shoes/jackboots/intruder
	name = "Intruder Jackboots"
	desc = "PLACE HOLDER BETA ALPHA"
	icon_state = "intruder_boots"
	item_state = "intruder_boots"
	item_color = "intruder_boots"

/obj/item/weapon/storage/belt/holster/kaz
	name = "Kaz's Holster"
	desc = "A holster to conceal weapons."
	icon_state = "Kaz_holster"
	item_state = "Kaz_holster"

/obj/item/clothing/gloves/cqc/kaz
	name = "Kaz's gloves"
	desc = "This is just plain cruel."
	icon_state = "Kaz_glove"
	item_state = "Kaz_glove"
	item_color = null	//So they don't wash.

/obj/item/clothing/head/HoS/beret/kaz
	name = "Kaz's Beret"
	desc = "looking at this makes you feel like beating on the congos like a pair of bongos."
	icon_state = "Kaz_beret"
	item_state = "Kaz_beret"
	armor = list(melee = 60, bullet = 5, laser = 25, energy = 10, bomb = 25, bio = 0, rad = 0)
	strip_delay = 30

/obj/item/clothing/under/rank/head_of_security/kaz
	name = "kaz's suit"
	desc = "You can you feel the comrades you lost in this suit."
	icon_state = "Kaz_suit"
	item_state = "Kaz_suit"
	item_color = "Kaz_suit"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	strip_delay = 30

/obj/item/clothing/glasses/hud/security/sunglasses/kaz
	name = "Kaz's Sunglasses"
	desc = "it's too bright..."
	icon_state = "Kaz_glasses"
	item_state = "Kaz_glasses"
	darkness_view = 1
	flash_protect = 1
	tint = 1

/obj/item/clothing/shoes/combat/kaz
	name = "Kaz's shoes"
	desc = "Looking at this makes your leg tingle."
	icon_state = "Kaz_shoes"
	item_state = "Kaz_shoes"
	armor = list(melee = 25, bullet = 25, laser = 25, energy = 25, bomb = 50, bio = 10, rad = 0)
	strip_delay = 40
	burn_state = -1 //Won't burn in fires

/obj/item/clothing/suit/armor/hos/trenchcoat/kaz
	name = "Kaz's armored trenchoat"
	desc = "meme."
	icon_state = "Kaz_Coat"
	item_state = "Kaz_Coat"
	flags_inv = 0
	strip_delay = 80

/obj/item/weapon/cane/kaz
	name = "Kaz's cane"
	desc = "You can feel your arm, your leg, even your fingers"
	icon_state = "Kaz_crutch"
	item_state = "Kaz_crutch"
	force = 12 //9 hit crit
	w_class = 3
	var/cooldown = 0
	var/on = 1
	var/stunforce = 7
	var/status = 0
	var/hitcost = 1000
/obj/item/weapon/cane/kaz/attack(mob/target, mob/living/user)
	if(on)
		add_fingerprint(user)
		if((CLUMSY in user.disabilities) && prob(50))
			user << "<span class ='danger'>You club yourself over the head.</span>"
			user.Weaken(3 * force)
			if(ishuman(user))
				var/mob/living/carbon/human/H = user
				H.apply_damage(2*force, BRUTE, "head")
			else
				user.take_organ_damage(2*force)
			return
		if(isrobot(target))
			..()
			return
		if(!isliving(target))
			return
		if (user.a_intent == "harm")
			if(!..()) return
			if(!isrobot(target)) return
		else
			if(cooldown <= 0)
				playsound(get_turf(src), 'sound/effects/woodhit.ogg', 75, 1, -1)
				target.Weaken(3)
				add_logs(user, target, "stunned", src)
				src.add_fingerprint(user)
				target.visible_message("<span class ='danger'>[user] has knocked down [target] with \the [src]!</span>", \
					"<span class ='userdanger'>[user] has knocked down [target] with \the [src]!</span>")
				if(!iscarbon(user))
					target.LAssailant = null
				else
					target.LAssailant = user
				cooldown = 1
				spawn(40)
					cooldown = 0
		return
	else
		return ..()

/obj/item/clothing/under/pmc/dd
	name = "Diamond-Dog Uniform"
	desc = "THEY CALL THEM THE DIAMOND DOGS!"
	icon_state = "BDU"
	item_state = "BDU"
	item_color = "BDU"
	has_sensor = 0
	can_adjust = 0
	armor = list(melee = 20, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	unacidable = 1

/obj/item/clothing/under/pmc/red
	name = "pmc uniform"
	desc = "War has changed. It's no longer about nations, ideologies, or ethnicity. It's an endless series of proxy battles fought by mercenaries and machines. War - and its consumption of life - has become a well-oiled machine. War has changed. ID-tagged soldiers carry ID-tagged weapons, use ID-tagged gear. Nanomachines inside their bodies enhance and regulate their abilities. Genetic control. Information control. Emotion control. Battlefiled control. Everything is monitored and kept under control. War has changed. The age of deterrence has become the age of control...All in the name of averting catastrophe from weapons of mass destruction. And he who controls the battlefield...controls history. War has changed. When the battlefield is under total control...War becomes routine"
	icon_state = "BDU_RED"
	item_state = "BDU_RED"
	item_color = "BDU_RED"
	has_sensor = 0
	can_adjust = 0
	armor = list(melee = 20, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	unacidable = 1

/obj/item/clothing/under/pmc/purple
	name = "pmc uniform"
	desc = "War has changed. It's no longer about nations, ideologies, or ethnicity. It's an endless series of proxy battles fought by mercenaries and machines. War - and its consumption of life - has become a well-oiled machine. War has changed. ID-tagged soldiers carry ID-tagged weapons, use ID-tagged gear. Nanomachines inside their bodies enhance and regulate their abilities. Genetic control. Information control. Emotion control. Battlefiled control. Everything is monitored and kept under control. War has changed. The age of deterrence has become the age of control...All in the name of averting catastrophe from weapons of mass destruction. And he who controls the battlefield...controls history. War has changed. When the battlefield is under total control...War becomes routine"
	icon_state = "BDU_PURPLE"
	item_state = "BDU_PURPLE"
	item_color = "BDU_PURPLE"
	has_sensor = 0
	can_adjust = 0
	armor = list(melee = 20, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	unacidable = 1

/obj/item/clothing/under/pmc/pink
	name = "pmc uniform"
	desc = "War has changed. It's no longer about nations, ideologies, or ethnicity. It's an endless series of proxy battles fought by mercenaries and machines. War - and its consumption of life - has become a well-oiled machine. War has changed. ID-tagged soldiers carry ID-tagged weapons, use ID-tagged gear. Nanomachines inside their bodies enhance and regulate their abilities. Genetic control. Information control. Emotion control. Battlefiled control. Everything is monitored and kept under control. War has changed. The age of deterrence has become the age of control...All in the name of averting catastrophe from weapons of mass destruction. And he who controls the battlefield...controls history. War has changed. When the battlefield is under total control...War becomes routine"
	icon_state = "BDU_PINK"
	item_state = "BDU_PINK"
	item_color = "BDU_PINK"
	has_sensor = 0
	can_adjust = 0
	armor = list(melee = 20, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	unacidable = 1

/obj/item/clothing/under/pmc/green
	name = "pmc uniform"
	desc = "War has changed. It's no longer about nations, ideologies, or ethnicity. It's an endless series of proxy battles fought by mercenaries and machines. War - and its consumption of life - has become a well-oiled machine. War has changed. ID-tagged soldiers carry ID-tagged weapons, use ID-tagged gear. Nanomachines inside their bodies enhance and regulate their abilities. Genetic control. Information control. Emotion control. Battlefiled control. Everything is monitored and kept under control. War has changed. The age of deterrence has become the age of control...All in the name of averting catastrophe from weapons of mass destruction. And he who controls the battlefield...controls history. War has changed. When the battlefield is under total control...War becomes routine"
	icon_state = "BDU_GREEN"
	item_state = "BDU_GREEN"
	item_color = "BDU_GREEN"
	has_sensor = 0
	can_adjust = 0
	armor = list(melee = 20, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	unacidable = 1

/obj/item/clothing/under/pmc/blue
	name = "pmc uniform"
	desc = "War has changed. It's no longer about nations, ideologies, or ethnicity. It's an endless series of proxy battles fought by mercenaries and machines. War - and its consumption of life - has become a well-oiled machine. War has changed. ID-tagged soldiers carry ID-tagged weapons, use ID-tagged gear. Nanomachines inside their bodies enhance and regulate their abilities. Genetic control. Information control. Emotion control. Battlefiled control. Everything is monitored and kept under control. War has changed. The age of deterrence has become the age of control...All in the name of averting catastrophe from weapons of mass destruction. And he who controls the battlefield...controls history. War has changed. When the battlefield is under total control...War becomes routine"
	icon_state = "BDU_BLUE"
	item_state = "BDU_BLUE"
	item_color = "BDU_BLUE"
	has_sensor = 0
	can_adjust = 0
	armor = list(melee = 20, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	unacidable = 1
