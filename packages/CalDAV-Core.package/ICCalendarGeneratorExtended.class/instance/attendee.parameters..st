as yet unclassified
attendee: aString parameters: aDictionary

	| value |
	
	value := aDictionary at: 'EMAIL' ifAbsent: [ '' ].
	((value = '') and: [ (aString subStrings: '$:') includes: 'mailto' ]) 
		ifTrue: [value := (aString subStrings: '$:') last].
	
	((value isNil not) and: [value isEmpty not])
		ifTrue: [	self tempComponent addAttendee: value]