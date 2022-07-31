validating
isValidMonth: aText

	^ (self isPositiveInteger: aText)
			and: [aText asNumber >= 1
				and: [aText asNumber <= 12]]