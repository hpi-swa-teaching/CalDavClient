as yet unclassified
addEvent: aSCMEvent

	| index hour |
	hour := aSCMEvent begin hour.
	(hour <=7) ifTrue: [index := 1].
	(hour > 7 and: hour <= 20) ifTrue: [index := hour-5].
	(hour > 20) ifTrue: [index := 15].
	(self submorphs at: index) addMorph: (SCMEventMorph from: aSCMEvent).