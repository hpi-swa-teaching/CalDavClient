accessing
isValidMinute: aText

	^ aText asString isAllDigits 
		and: [aText asNumber < 60 
		and: [aText asNumber >= 0]]