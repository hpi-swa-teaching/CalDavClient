testing
testBuildWith

	| spec |
	
	spec := self quickView buildWith: ToolBuilder default.
	self
		assert: (spec model = self quickView)
		description: 'Expected CALQuickView as model of spec'