actions
updateWeek

	self clearWeekGrid.
	self rebuildWeekGrid.
	self changed: #weekText