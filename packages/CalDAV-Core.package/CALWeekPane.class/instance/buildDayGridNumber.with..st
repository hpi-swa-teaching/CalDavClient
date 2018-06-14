as yet unclassified
buildDayGridNumber: aNumber with: aBuilder

	| x |
	
	x := self timeLabelWidth + (self dayGridWidth * aNumber).
	^  (CALDayGridPane new
				parent: self parent;
				day: (self day addDays: aNumber);
				buildSpec: aBuilder)
				frame: (x @ (self buttonHeight + self dayLabelHeight) corner: x + self dayGridWidth @ 1)