as yet unclassified
buildDayGridNumber: aNumber with: aBuilder

	| x y |
	
	x := self dayGridWidth * aNumber.
	y := self dayLabelHeight.
	^  (CALDayGridPanel new
				parent: self parent;
				day: (self startDay addDays: aNumber);
				buildSpec: aBuilder)
				frame: (x @ y corner: (x + self dayGridWidth) @ 1)