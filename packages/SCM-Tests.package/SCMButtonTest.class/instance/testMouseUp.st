testing
testMouseUp

	self assert: self state equals: false.
	self subject click.
	self assert: self state equals: true