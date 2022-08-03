convenience
timespanFor: aDate

	"timespan between monday and sunday which includes the date"
	^ Timespan starting: aDate asWeek asDate next ending: aDate asWeek next asDate