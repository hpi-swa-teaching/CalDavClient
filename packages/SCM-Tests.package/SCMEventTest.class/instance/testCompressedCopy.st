testing
testCompressedCopy

	| event |
	
	event := self createEvent.
	
	self assert: event compressedCopy equals: self event.
	
	event description: ''.
	self assert: event compressedCopy ~= self event.
	self assert: event compressedCopy description equals: ''