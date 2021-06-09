toolbuilder
buildPanelWith: aBuilder

	| model |
	
	model := CALDeadlinesPanel new
				app: self app;
				yourself.
	^ model buildSpec: aBuilder