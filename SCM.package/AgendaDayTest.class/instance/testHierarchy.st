testing
testHierarchy

	self assert: self agendaDay submorphs size equals: 2.
	self assert: self agendaDay submorphs first class equals: AgendaDayTitle.
	self assert: self agendaDay submorphs second class equals: AgendaDayEventBox.