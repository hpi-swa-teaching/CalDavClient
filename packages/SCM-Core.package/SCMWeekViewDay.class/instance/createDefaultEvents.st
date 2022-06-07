as yet unclassified
createDefaultEvents
	
	| event |
	
	event := (SCMWeekViewEventBox createWithHeight: 50).
	event addMorph: SCMEventMorph new.
	
	self addMorphBack: (SCMWeekViewEventBox createWithHeight: 325).
	self addMorphBack: event.
	self addMorphBack: (SCMWeekViewEventBox createWithHeight: 330).
	