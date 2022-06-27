accessing
isValidYear: aText

	^ aText asString isAllDigits 
		and: [aText asNumber > 0] "(self isEmptyText: aText) not and:"