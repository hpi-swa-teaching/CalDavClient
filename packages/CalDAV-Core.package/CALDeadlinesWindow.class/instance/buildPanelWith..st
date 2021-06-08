toolbuilder
buildPanelWith: aBuilder
	|model|
	model := CALDeadlinesPanel new
				app: self app.
	^ model buildSpec: aBuilder