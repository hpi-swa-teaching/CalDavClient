testing
testHierarchy

	self subject addEvent: self demoEvent.
	self subject addEvent: self demoTomorrowEvent.
	self assert: self subject submorphs size equals: 2.
	self assert: self subject submorphs first class equals: TextMorph.
	self assert: self subject submorphs second class equals: SCMAgendaViewDayEventBox