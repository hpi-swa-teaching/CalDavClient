accessing
isPositiveInteger: aText

	^ aText asString isAllDigits
			and: [aText asNumber > 0]