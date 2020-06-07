accessing
eventNamesIn: aTimespan 

	 ^ (self eventsIn: aTimespan) collect: [ :each | each title, '  ', each timeString ]