actions
update: aSymbol

	aSymbol = #calendarsChanged 
		ifTrue: [self changed: #editableCalendarsTitles. 
			self resetIndex]