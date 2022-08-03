validating
isValidHour: aText

	^ (self isNonnegativeInteger: aText)
			and: [aText asNumber < 24]