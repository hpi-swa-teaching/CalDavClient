as yet unclassified
testBuildWith

	| spec |
	
	spec := self app buildWith: (ToolBuilder default).
	self assert: (spec model = self app) description: 'Expected CALApp as model of spec'