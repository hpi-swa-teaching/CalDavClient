accessing
isValidMinute: aText

	^ (self isPositiveInteger: aText)
			and: [aText asNumber < 60]