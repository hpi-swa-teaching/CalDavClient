event block layouting
isInConflictWithPreviousEvents: anEvent with: lastEventEnding

	^ lastEventEnding isNil not and: [anEvent begin >= lastEventEnding]