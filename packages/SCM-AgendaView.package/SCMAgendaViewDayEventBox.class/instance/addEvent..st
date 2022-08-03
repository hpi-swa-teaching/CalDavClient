initialization
addEvent: aSCMEvent

	| eventMorph |
	
	eventMorph := (SCMEventMorph createWith: aSCMEvent).
	
	self addMorphBack: eventMorph.
	self eventMorphs add: eventMorph