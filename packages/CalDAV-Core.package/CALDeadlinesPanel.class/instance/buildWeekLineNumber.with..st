toolbuilder
buildWeekLineNumber: aNumber with: aBuilder

	| y model spec |
	
	y := self weekGridHeight * aNumber.
	model := CALDeadlinesEventPanel new
				app: self app;
				days: (self calculateDaysOfWeek: (aNumber + 1));
				index: aNumber - 1;
				yourself.
	spec := model buildSpec: aBuilder.
	^ spec frame: (0 @ y corner: 8 @ (y + self weekGridHeight))