validating
isValidMonth: aText

	^ (self isPositiveInteger: aText)
			and: [aText asNumber <= 12]