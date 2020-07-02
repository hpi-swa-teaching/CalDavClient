as yet unclassified
saveData

	|filter mock client cal startDate startDay startMonth startYear|
	
	cal := NDCalDavCalendar nDCal.
	cal url: NDGoogleCalDavClient calendarURL.
	
	mock := cal newEvent.
	mock summary: self titleArea text.
	(mock summary size) = 0 
		ifTrue: [self handleError:'Please enter a title for the appointment'. ^nil].
		
	filter := NDDateFormatter new.
	filter appointmentDialog: self.
	startDay := self startDayArea textArea text.
	startMonth := self startMonthArea textArea text.
	startYear := self startYearArea textArea text.
	
	startDay := filter filterDay: startDay.
	startDay = false ifTrue:[^nil].
	
	startMonth := (filter convertMonth: startMonth).
	startMonth=false ifTrue:[^nil].
	
	startYear := filter filterYear: startYear.
	startYear = false ifTrue:[^nil].
	
	startDate := (startDay asString,' ', startMonth,' ',startYear asString).
	[mock start: (startDate) asDate.
	mock end: mock start.] on: Error do: [self handleError: 'Please enter a valid date'. ^nil.].

	"mock inspect."
	
	client := NDGoogleButton GoogleClient.
	NDFetchFromGoogleButton testConnection.
	
	client pushEvent: mock.
	client forcePushEvent: mock.
	
	self accept: self.

	
	
	
	dayList do: [:each|
		each date asString = mock start asString
			ifTrue: [
				|delButton eventTitles eventItem|
				eventItem := PHListGroupItem new.
				eventTitles := PHLabel new;  text: 'Title: ', (mock serverData) summary asString, '
Start: ', ((mock serverData) start) asTime asString.
				eventTitles minSize: 150@10.
				delButton := NDDeleteButton new; text: 'delete'.
				delButton icEvent: mock.
				delButton color: Color red darker.
				eventItem add: eventTitles.
				eventItem add: delButton.
					each submorphs size > 1
						ifTrue: [
							each submorphs second class = PHLabel
							ifTrue: [
								each submorphs second text = '- There are no events for this day'
								ifTrue: [
									each submorphs second abandon.].].].
				each add: eventItem.
				delButton listItem: eventItem]
			].