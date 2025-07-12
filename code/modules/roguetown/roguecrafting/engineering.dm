/datum/crafting_recipe/roguetown/engineering
	abstract_type = /datum/crafting_recipe/roguetown/engineering

/* The original recipes from Vanderlin
/datum/slapcraft_recipe/engineering/structure/pressure_plate
	name = "pressure plate"
	steps = list(
		/datum/slapcraft_step/item/cog,
		/datum/slapcraft_step/item/plank,
		/datum/slapcraft_step/item/plank/second,
		/datum/slapcraft_step/use_item/engineering/hammer,
		)
	result_type = /obj/structure/pressure_plate
	craftsound = 'sound/foley/Building-01.ogg'

/datum/slapcraft_recipe/engineering/structure/repeater
	name = "repeater"
	steps = list(
		/datum/slapcraft_step/item/cog,
		/datum/slapcraft_step/item/iron,
		/datum/slapcraft_step/use_item/engineering/hammer,
		/datum/slapcraft_step/item/stick,
		)
	result_type = /obj/structure/repeater
	craftsound = 'sound/foley/Building-01.ogg'

/datum/slapcraft_recipe/engineering/structure/activator
	name = "activator"
	steps = list(
		/datum/slapcraft_step/item/cog,
		/datum/slapcraft_step/item/cog/second,
		/datum/slapcraft_step/item/iron,
		/datum/slapcraft_step/use_item/engineering/hammer,
		/datum/slapcraft_step/item/small_log,
		/datum/slapcraft_step/use_item/engineering/hammer/second,
		)
	result_type = /obj/structure/activator
	craftsound = 'sound/foley/Building-01.ogg'

/datum/repeatable_crafting_recipe/engineering/water_pipe
	name = "fluid transport pipe"
	requirements = list(
		/obj/item/ingot/bronze = 1,
	)
	tool_usage = list(
		/obj/item/weapon/hammer = list(span_notice("starts to hammer"), span_notice("start to hammer"), 'sound/items/bsmith2.ogg'),
	)
	attacked_atom = /obj/item/ingot/bronze
	starting_atom= /obj/item/weapon/hammer
	output = /obj/item/rotation_contraption/water_pipe
	output_amount = 12
	craft_time = 5 SECONDS
	uses_attacked_atom = FALSE

/datum/repeatable_crafting_recipe/engineering/boiler
	name = "boiler"
	requirements = list(
		/obj/item/ingot/copper = 3,
	)
	tool_usage = list(
		/obj/item/weapon/hammer = list(span_notice("starts to hammer"), span_notice("start to hammer"), 'sound/items/bsmith2.ogg'),
	)
	attacked_atom = /obj/item/ingot/copper
	starting_atom= /obj/item/weapon/hammer
	output = /obj/item/rotation_contraption/boiler
	craft_time = 5 SECONDS
	uses_attacked_atom = FALSE

/datum/repeatable_crafting_recipe/engineering/pump
	name = "liquid pump"
	requirements = list(
		/obj/item/grown/log/tree/small= 1,
		/obj/item/ingot/bronze = 2,
	)
	tool_usage = list(
		/obj/item/weapon/knife = list(span_notice("starts to whittle"), span_notice("start to whittle"), 'sound/items/wood_sharpen.ogg'),
		/obj/item/weapon/hammer = list(span_notice("starts to hammer"), span_notice("start to hammer"), 'sound/items/bsmith2.ogg'),
	)
	attacked_atom = /obj/item/grown/log/tree/small
	starting_atom= /obj/item/weapon/knife
	output = /obj/item/rotation_contraption/pump
	craft_time = 5 SECONDS
	uses_attacked_atom = FALSE

/datum/repeatable_crafting_recipe/engineering/water_vent
	name = "fluid vent"
	requirements = list(
		/obj/item/ingot/bronze = 1,
	)
	tool_usage = list(
		/obj/item/weapon/hammer = list(span_notice("starts to hammer"), span_notice("start to hammer"), 'sound/items/bsmith2.ogg'),
	)
	attacked_atom = /obj/item/ingot/bronze
	starting_atom= /obj/item/weapon/hammer
	output = /obj/item/rotation_contraption/water_vent
	output_amount = 2
	craft_time = 5 SECONDS
	uses_attacked_atom = FALSE

/datum/repeatable_crafting_recipe/engineering/steam_recharger
	name = "steam recharger"
	requirements = list(
		/obj/item/ingot/bronze = 2,
	)
	tool_usage = list(
		/obj/item/weapon/hammer = list(span_notice("starts to hammer"), span_notice("start to hammer"), 'sound/items/bsmith2.ogg'),
	)
	attacked_atom = /obj/item/ingot/bronze
	starting_atom= /obj/item/weapon/hammer
	output = /obj/item/rotation_contraption/steam_recharger
	craft_time = 5 SECONDS
	uses_attacked_atom = FALSE

/datum/repeatable_crafting_recipe/engineering/breaching_charge
	name = "breaching charge"
	requirements = list(
		/obj/item/reagent_containers/powder/blastpowder = 2,
		/obj/item/natural/fibers = 1,
		/obj/item/natural/cloth = 1,
	)

	attacked_atom = /obj/item/natural/cloth
	starting_atom = /obj/item/reagent_containers/powder/blastpowder
	output = /obj/item/breach_charge
	craft_time = 5 SECONDS
*/

/datum/crafting_recipe/roguetown/structure/pressure_plate
	name = "pressure plate"
	result = /obj/structure/pressure_plate
	reqs = list(/obj/item/roguegear = 1, /obj/item/grown/log/tree/small = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2

/datum/crafting_recipe/roguetown/structure/activator
	name = "activator"
	result = /obj/structure/activator
	reqs = list(/obj/item/roguegear = 1, /obj/item/grown/log/tree/small = 1, /obj/item/grown/log/tree/small = 1, /obj/item/ingot/iron = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2

/datum/crafting_recipe/roguetown/engineering/shaft
	name = "wooden shaft(3x)"
	category = "Engineering"
	result = list(/obj/item/rotation_contraption/shaft,
				  /obj/item/rotation_contraption/shaft,
				  /obj/item/rotation_contraption/shaft)
	reqs = list(/obj/item/grown/log/tree/small = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2

/datum/crafting_recipe/roguetown/engineering/cog
	name = "wooden cogwheel(2x)"
	category = "Engineering"
	result = list(/obj/item/rotation_contraption/cog,
				  /obj/item/rotation_contraption/cog)
	reqs = list(/obj/item/grown/log/tree/small = 1, /obj/item/ingot/bronze = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2


/datum/crafting_recipe/roguetown/engineering/waterwheel
	name = "wooden waterwheel"
	category = "Engineering"
	result = /obj/item/rotation_contraption/waterwheel
	reqs = list(/obj/item/grown/log/tree/small = 1, /obj/item/grown/log/tree/small = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2

/datum/crafting_recipe/roguetown/engineering/large_cog
	name = "large wooden cogwheel"
	category = "Engineering"
	result = /obj/item/rotation_contraption/large_cog
	reqs = list(/obj/item/grown/log/tree/small = 1, /obj/item/ingot/bronze = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2

/datum/crafting_recipe/roguetown/structure/gearbox
	name = "gearbox"
	category = "Engineering"
	result = /obj/item/rotation_contraption/horizontal
	reqs = list(/obj/item/grown/log/tree/small = 1, /obj/item/grown/log/tree/small = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2

/datum/crafting_recipe/roguetown/structure/vertical_gearbox
	name = "vertical gearbox"
	category = "Engineering"
	result = /obj/item/rotation_contraption/vertical
	reqs = list(/obj/item/grown/log/tree/small = 1, /obj/item/grown/log/tree/small = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2

/datum/crafting_recipe/roguetown/engineering/rails
	name = "minecart rails"
	category = "Engineering"
	result = /obj/item/rotation_contraption/minecart_rail
	reqs = list(/obj/item/grown/log/tree/small = 1, /obj/item/ingot/iron = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2

/datum/crafting_recipe/roguetown/engineering/railbreak
	name = "minecart rail break"
	category = "Engineering"
	result = /obj/item/rotation_contraption/minecart_rail/railbreak
	reqs = list(/obj/item/grown/log/tree/small = 1, /obj/item/ingot/iron = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2


/datum/crafting_recipe/roguetown/engineering/minecart
	name = "minecart"
	category = "Engineering"
	result = /obj/structure/closet/crate/miningcar
	reqs = list(/obj/item/grown/log/tree/small = 1, /obj/item/ingot/iron = 1)
	verbage_simple = "engineer"
	verbage = "engineers"
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 2
