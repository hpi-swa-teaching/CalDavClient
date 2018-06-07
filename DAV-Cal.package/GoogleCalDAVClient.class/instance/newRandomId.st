authorization
newRandomId

	^ ((UUID new asString reject: [:c | c = $-]) first: 26) , '@google.com'