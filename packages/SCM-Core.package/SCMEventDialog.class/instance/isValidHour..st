accessing
isValidHour: aText

	^ aText asString isAllDigits 
		and: [aText asNumber < 24 
		and: [aText asNumber >= 0]]