testing
testBuildWith

	| spec dialog |
	
	self assert: (CALEventDialog  selectors anySatisfy: [ :each| each = 'buildWith:']).
	dialog := CALAddEventDialog new.
	spec := dialog 
		app: self app;
		buildWith: (ToolBuilder default).
	self assert: (spec model = dialog)