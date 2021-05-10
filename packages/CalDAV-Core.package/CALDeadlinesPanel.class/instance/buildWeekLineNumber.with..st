as yet unclassified
buildWeekLineNumber: aNumber with: aBuilder

	| x y model spec |
	
	x := 0.
	y := self weekGridHeight * aNumber.
	model := CALDeadlinesEventPanel new
				app: self app;
				days: (self calculateDaysOfWeek: (aNumber+1)).
	spec := model buildSpec: aBuilder.
	^ spec frame: (x @ y corner: 1 @ (y + self weekGridHeight))