/mob/living/carbon/human
	name = "Unknown"
	real_name = "Unknown"
	icon = 'icons/mob/human.dmi'
	icon_state = "human_basic"
	appearance_flags = KEEP_TOGETHER|TILE_BOUND|PIXEL_SCALE|LONG_GLIDE
	hud_possible = list(ANTAG_HUD)
	hud_type = /datum/hud/human
	base_intents = list(INTENT_HELP, INTENT_DISARM, INTENT_GRAB, INTENT_HARM)
	possible_mmb_intents = list(INTENT_STEAL, INTENT_JUMP, INTENT_KICK, INTENT_BITE, INTENT_GIVE)
	can_buckle = TRUE
	buckle_lying = FALSE
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID

	ambushable = 1

	voice_pitch = 1

	var/footstep_type = FOOTSTEP_MOB_HUMAN

	var/last_sound //last emote so we have no doubles

	//Hair colour and style
	var/hair_color = "#000000"
	var/hairstyle = "Bald"

	//Facial hair colour and style
	var/facial_hair_color = "000"
	var/facial_hairstyle = "Shaved"

	//Eye colour
	var/eye_color = "#000000"

	var/voice_color = "a0a0a0"
	var/nickname = "Please Change Me"
	var/highlight_color = "#FF0000"
	var/detail_color = "000"

	var/skin_tone = "caucasian1"	//Skin tone

	var/lip_style = null	//no lipstick by default- arguably misleading, as it could be used for general makeup
	var/lip_color = "white"

	var/age = "Adult"		//Player's age

	var/accessory = "None"
	var/detail = "None"
	var/marking = "None"

	var/shavelevel = 0

	var/socks = "Nude" //Which socks the player wants
	var/backpack = DBACKPACK		//Which backpack type the player has chosen.
	var/jumpsuit_style = PREF_SUIT		//suit/skirt

	//Equipment slots
	var/obj/item/clothing/skin_armor = null
	var/obj/item/clothing/wear_armor = null
	var/obj/item/clothing/wear_pants = null
	var/obj/item/belt = null
	var/obj/item/beltl = null
	var/obj/item/beltr = null
	var/obj/item/wear_ring = null
	var/obj/item/wear_wrists = null
	var/obj/item/r_store = null
	var/obj/item/l_store = null
	var/obj/item/s_store = null
	var/obj/item/cloak = null
	var/obj/item/clothing/wear_shirt = null

	var/special_voice = "" // For changing our voice. Used by a symptom.

	var/name_override //For temporary visible name changes

	var/datum/physiology/physiology

	var/list/datum/bioware = list()

	var/static/list/can_ride_typecache = typecacheof(list(/mob/living/carbon/human))
	var/lastpuke = 0
	var/last_fire_update
	var/account_id

	canparry = TRUE
	candodge = TRUE

	dodgecd = FALSE
	dodgetime = 0

	var/list/possibleclass
	var/advsetup = 0


//	var/alignment = ALIGNMENT_TN

	var/canseebandits = FALSE

	var/marriedto

	var/has_stubble = TRUE

	var/original_name = null

	var/buried = FALSE // Whether the body is buried or not.
	var/funeral = FALSE // Whether the body has received rites or not.

	var/datum/devotion/devotion = null // Used for cleric_holder for priests

	var/headshot_link = null
	var/flavortext = null
	var/flavortext_display = null
	var/ooc_notes = null
	var/ooc_notes_display = null
	var/ooc_extra_link
	var/ooc_extra
	var/is_legacy = FALSE
	var/received_resident_key = FALSE

	possible_rmb_intents = list(/datum/rmb_intent/feint,\
	/datum/rmb_intent/aimed,\
	/datum/rmb_intent/strong,\
	/datum/rmb_intent/swift,\
	/datum/rmb_intent/riposte,\
	/datum/rmb_intent/weak)

	rot_type = /datum/component/rot/corpse

	var/voice_type = null // LETHALSTONE EDIT: defines what sound pack we use. keep this null so mobs resort to their typical gender typing - preferences set this
	var/datum/statpack/statpack = null // Lethalstone Port - statpacks for greater customization
	var/second_voice	// Virtue-specific. Can be swapped to / from and changed.
	var/original_voice
	//vitae used mostly for vampires or anything that uses blood magic
	var/vitae = 1000
	//we track this for round goals and skill level ups, this number should rise for each vamp
	var/bs_vitae_total = 0 
	//setting up vars on round start values
	var/cache_skin = "#000000"
	var/cache_eyes = "#000000"
	var/cache_hair ="#000000"
	//setting up vars for bloodsucker color values
	var/bs_skin = "#c9d3de"
	var/bs_eyes = "#ff0000"
	var/bs_hair = "#181a1d"
	//Thrall and spawn count
	var/bs_thrall = 0
	var/bs_spawn = 0
	//An alternative headshot link that can be used when users want to use it for a special role like while a vampire, werewolf, bandit, etc.
	var/antag_headshot_link
	var/patronchoice = null //Saves the Warlock's patron if any.
