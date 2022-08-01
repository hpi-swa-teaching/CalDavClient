testing
testHierarchy

	self subject addEvent: self event1.
	self subject addEvent: self event2.
	self assert: self subject submorphs size equals: 2.
	self assert: self subject submorphs first class equals: TextMorph.
	self assert: self subject submorphs second class equals: SCMAgendaViewDayEventBox