testing
testParseCompleteEventInformation

	| icCalendar |
	
	icCalendar := CALPublicCalDAVClient new parseCompleteEventInformation: self mockICContent.
						
	self assert: icCalendar name equals: 'ICS Test (guenther.guehter)'.
	self assert: icCalendar events first summary equals: 'Treffen mit der Geheimen Rasselbande'.
	self assert: icCalendar events size = 1.
	
						