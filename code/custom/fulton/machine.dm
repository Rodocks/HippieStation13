/datum/design/extraction_point
	name = "Machine Design (Fulton Recovery Beacon Board)"
	desc = "The circuit board for a Fulton Recovery Beacon."
	id = "extraction_point"
	req_tech = list("programming" = 1)
	build_type = IMPRINTER
	materials = list(MAT_GLASS = 1000, "sacid" = 20)
	build_path = /obj/item/weapon/circuitboard/extraction_point
	category = list ("Misc. Machinery")

/obj/item/weapon/circuitboard/extraction_point
	name = "circuit board (Fulton Recovery Beacon)"
	build_path = /obj/machinery/extraction_point
	board_type = "machine"
	origin_tech = "programming=1"
	req_components = list(
							/obj/item/weapon/stock_parts/manipulator = 1)


/datum/design/extraction_pack
	name = "Fulton Recovery Pack"
	desc = "A fulton recovery pack with 12 uses."
	id = "extraction_pack"
	req_tech = list("engineering" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 4000, MAT_GLASS = 5000)
	build_path = /obj/item/weapon/extraction_pack
	category = list("Weapons")

/datum/design/extraction_pack_adv
	name = "Advanced Fulton Recovery Pack"
	desc = "A fulton recovery pack with 24 uses."
	id = "extraction_pack_adv"
	req_tech = list("engineering" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 4000, MAT_GLASS = 5000)
	build_path = /obj/item/weapon/extraction_pack/advanced
	category = list("Weapons")

/datum/design/extraction_pack_super
	name = "Super Fulton Recovery Pack"
	desc = "A fulton recovery pack with 48 uses."
	id = "extraction_pack_super"
	req_tech = list("engineering" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 4000, MAT_GLASS = 5000)
	build_path = /obj/item/weapon/extraction_pack/super
	category = list("Weapons")