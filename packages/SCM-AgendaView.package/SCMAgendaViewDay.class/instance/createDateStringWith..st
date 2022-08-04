convenience
createDateStringWith: aDate

	^ aDate asDateAndTime dayOfWeekAbbreviation, ',', 
			Character cr, aDate dayOfMonth asString, '. ', 
			aDate monthAbbreviation asString