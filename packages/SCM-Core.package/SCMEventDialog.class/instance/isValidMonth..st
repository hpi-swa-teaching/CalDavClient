accessing
isValidMonth: aText

	^ aText asString isAllDigits
		and: [aText asNumber <= 12 
		and: [aText asNumber > 0]]