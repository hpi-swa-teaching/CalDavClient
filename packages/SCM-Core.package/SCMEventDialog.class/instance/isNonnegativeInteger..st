validating
isNonnegativeInteger: aText

	^ aText asString isAllDigits
			and: [aText asNumber >= 0]