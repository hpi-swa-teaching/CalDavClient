as yet unclassified
testBuildWith

	| spec calApp |
	
	calApp := CALApp new.
	spec := calApp buildWith: (ToolBuilder default).
	self assert: (spec model = calApp) description: 'Expected CALApp as model of spec'