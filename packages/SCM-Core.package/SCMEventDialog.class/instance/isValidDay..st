accessing
isValidDay: aText

	^ aText asString isAllDigits and: [1 <= aText asNumber and: [aText asNumber <= 31]]