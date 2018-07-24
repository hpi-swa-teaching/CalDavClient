processing-properties
attendee: aString parameters: aDictionary

	| attendee |
	
	attendee := aDictionary at: 'EMAIL' ifAbsent: [self mailEndingOf: aString].
	"skip adding attendee if no value was found"
	((attendee isNil not) and: [attendee isEmpty not])
		ifTrue: [	self tempComponent addAttendee: attendee]