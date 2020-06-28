as yet unclassified
saveData

	| mock client cal|
	cal:= NDCalDavCalendar nDCal.
	cal url: GoogleCalDAVClient calendarURL.
	mock:=cal newEvent.
	mock summary: self titleArea textArea text.
	mock start: Date today.
	mock end: Date today.
	client:=NDGoogleButton GoogleClient.
	client pushEvent: mock.
	client forcePushEvent: mock.
	
	self accept: self.
	
	dayList do: [:each|
		each date asString = mock start asString
			ifTrue: [
				|delButton eventTitles eventItem|
				eventItem := PHListGroupItem new.
				eventTitles := PHLabel new;  text: (mock serverData) summary asString.
				eventTitles minSize: 100@10.
				delButton := NDDeleteButton new; text: 'delete'.
				delButton icEvent: mock.
				delButton color: Color red darker.
				eventItem add: eventTitles.
				eventItem add: delButton.
				each add: eventItem.
				delButton listItem: eventItem]
			].