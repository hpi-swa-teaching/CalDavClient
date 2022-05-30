saving
saveEvent

	self calendar addEvent: (SCMEvent new
		title: self eventTitle contents;
		beginDay: self eventBeginDay contents).
	
	self owner closeBoxHit.