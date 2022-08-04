testing
testHierarchy
	
	self assert: self subject submorphs first class equals: TextMorph.
	self assert: self subject submorphs second class equals: SCMAgendaViewDayEventBox