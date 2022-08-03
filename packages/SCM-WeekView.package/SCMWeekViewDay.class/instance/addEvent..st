initialization
addEvent: aSCMEvent

	| index hour |
	
	hour := aSCMEvent begin hour.
	index := self getIndexForHour: hour.
	(self submorphs at: index) addMorph: (SCMEventMorph createWith: aSCMEvent)