testing
testHierarchy

	self subject addEvent: SCMEvent dummy.
	self subject addEvent: SCMEvent dummy.
	self assert: self subject submorphs size equals: 2.
	self assert: self subject submorphs first class equals: TextMorph.
	self assert: self subject submorphs second class equals: SCMAgendaViewDayEventBox