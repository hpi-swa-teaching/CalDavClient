running
testColorOfWindow
	self assert: Color black equals: ((window instVarNamed: 'label') color)