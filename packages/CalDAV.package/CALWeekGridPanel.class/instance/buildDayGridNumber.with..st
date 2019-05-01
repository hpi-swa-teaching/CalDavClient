toolbuilder
buildDayGridNumber: aNumber with: aBuilder

	| x y model spec |
	
	x := self dayGridWidth * (aNumber - 1).
	y := self dayLabelHeight.
	model := CALEventGridPanel new
				app: self app;
				day: (self dayGridDateFor: aNumber).
	spec := model buildSpec: aBuilder.
	^ spec frame: (x @ y corner: (x + self dayGridWidth) @ 1)