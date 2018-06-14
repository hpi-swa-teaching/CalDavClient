as yet unclassified
testBuildWith

	| spec calApp |
	
	self assert: (CALApp selectors anySatisfy: [ :each| each = 'buildWith:']).
	calApp := CALApp new.
	spec := calApp buildWith: (ToolBuilderMock default).
	self assert: (spec model = calApp)