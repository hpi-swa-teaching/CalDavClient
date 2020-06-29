as yet unclassified
saveData

	| mock client cal|
	cal:= NDCalDavCalendar nDCal.
	cal url: NDGoogleCalDavClient calendarURL.
	mock:=cal newEvent.
	mock summary: self titleArea textArea text.
	mock start: Date today.
	mock end: Date today.
	client:=NDGoogleButton GoogleClient.
	
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