toolbuilder
buildDayGridNumber: aNumber with: aBuilder

	| x y model spec |
	
	x := self dayGridWidth * (aNumber - 1).
	y := self dayLabelHeight.
	model := CALDayGridPanel new
				parent: self parent;
				day: (self dayGridDateFor: aNumber).
	spec := model buildSpec: aBuilder.
	^ spec frame: (x @ y corner: (x + self dayGridWidth) @ 1)