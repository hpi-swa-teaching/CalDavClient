validating
isValidHour: aText

	^ (self isPositiveInteger: aText)
			and: [aText asNumber < 24]