initialization
addEvent: aSCMEvent

	self eventBox ifNil: [self eventBox: SCMAgendaViewDayEventBox new;
									addMorphBack: self eventBox;
									vResizing: #spaceFill].
	self eventBox addEvent: aSCMEvent