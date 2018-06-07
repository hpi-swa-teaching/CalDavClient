accessing
newEvent
	
	| newId event |
	newId := self client newEventIdFor: self. 
	event := CalDavEvent 
		newIn: self 
		withId: newId
		withUrl: (self client eventUrlFor: self withId: newId).
	^ event