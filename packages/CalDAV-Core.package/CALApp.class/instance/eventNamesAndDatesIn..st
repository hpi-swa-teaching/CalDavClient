accessing
eventNamesAndDatesIn: aTimespan

	^ (self eventsIn: aTimespan) collect: [ :each | each timespan asDate asString, ' ', each title, '  ', each timeString ]