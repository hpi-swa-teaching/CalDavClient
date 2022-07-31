validating
isValidDay: aText

	^ (self isPositiveInteger: aText)
			and: [aText asNumber <= 31]