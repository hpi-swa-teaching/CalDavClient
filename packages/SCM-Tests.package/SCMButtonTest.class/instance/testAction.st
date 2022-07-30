testing
testAction

	self assert: self state equals: false.
	self subject doButtonAction.
	self assert: self state equals: true