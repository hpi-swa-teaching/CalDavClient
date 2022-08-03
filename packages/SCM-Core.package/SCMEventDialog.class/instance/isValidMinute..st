validating
isValidMinute: aText

	^ (self isNonnegativeInteger: aText)
			and: [aText asNumber < 60]