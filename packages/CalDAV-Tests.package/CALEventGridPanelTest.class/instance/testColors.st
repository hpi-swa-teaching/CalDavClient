testing
testColors

	| spec |
	
	spec := self eventGrid buildSpec: ToolBuilder default.
	self assert: (spec children allSatisfy: [ :each | each color isNil not]) description: 'all event blocks should have a color'