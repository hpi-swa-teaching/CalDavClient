initialization
addEvent: aSCMEvent

	self eventBox ifNil: 
		[self eventBox: SCMAgendaViewDayEventBox new;
			addMorphBack: self eventBox].
	self eventBox addEvent: aSCMEvent