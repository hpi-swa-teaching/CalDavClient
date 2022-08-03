initialization
addEvent: aSCMEvent

	| eventMorph |
	
	eventMorph := (SCMEventMorph from: aSCMEvent).
	
	self addMorphBack: eventMorph.
	self eventMorphs add: eventMorph