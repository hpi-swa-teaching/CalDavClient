as yet unclassified
testBuildWith

	| spec dialog |
	
	self assert: (CALEventDialog  selectors anySatisfy: [ :each| each = 'buildWith:']).
	dialog := CALAddEventDialog new.
	spec := dialog 
		parent: app;
		buildWith: (ToolBuilderMock default).
	self assert: (spec model = dialog)