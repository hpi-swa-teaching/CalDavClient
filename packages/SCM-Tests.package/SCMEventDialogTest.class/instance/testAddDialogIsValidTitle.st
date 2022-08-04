accessing
testAddDialogIsValidTitle

	self addDialog title: ''.
	self assert: self addDialog isValidTitle not.
	
	self addDialog title: 'ABC'.
	self assert: self addDialog isValidTitle