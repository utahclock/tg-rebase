#define WHOOPEE_CD 1000

/obj/item/whoopee // in the name of all that is holy DESTROY THIS THE MOMENT YOU SEE IT, CREW.
	name = "whoopee cushion"
	desc = "If you're reading this than the clown, or some other sinister fiend, probably pranked you."
	icon_state = "whoopee"
	item_state = "whoopee"
	var/list/fnoises = list('sound/items/fnoise1.ogg', 'sound/items/fnoise2.ogg', 'sound/items/fnoise3.ogg', 'sound/items/fnoise4.ogg')
	var/cooldown

/obj/item/whoopee/Crossed(mob/living/L)
	if(!cooldown)
		if(isliving(L))
			playsound(get_turf(L), pick(fnoises), 100)
			cooldown = TRUE
			addtimer(src, "unsetcooldown", WHOOPEE_CD)
	..()

/obj/item/whoopee/proc/unsetcooldown()
	cooldown = FALSE

#undef WHOOPEE_CD

