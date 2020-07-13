as yet unclassified
saveData

	| filter mock client cal startDate startDay startMonth startYear startHour startMinute startDateAndTime |
	
	cal := NDCalDavCalendar nDCal.
	cal url: NDGoogleCalDavClient calendarURL.
	
	mock := cal newEvent.
	mock summary: self titleArea text.
	(mock summary size) = 0 
		ifTrue: [self handleError:'Please enter a title for the appointment'. ^nil].
		
	filter := NDFilter new.
	filter appointmentDialog: self.
	
	startDay := self startDayArea textArea text.
	startMonth := self startMonthArea textArea text.
	startYear := self startYearArea textArea text.
	startHour := self startHourArea text.
	startMinute := self startMinuteArea text.
	
	startDay := filter filterDay: startDay.
	startDay = false ifTrue:[^nil].
	
	startMonth := (filter convertMonth: startMonth).
	startMonth= false ifTrue:[^nil].
	
	startYear := filter filterYear: startYear.
	startYear = false ifTrue:[^nil].
	
	startHour := filter filterHour: startHour.
	startHour = false ifTrue:[^nil].
	
	startMinute := filter filterMinute: startMinute.
	startMinute = false ifTrue:[^nil].
		
	startDate := (startDay asString,' ', startMonth,' ',startYear asString).
	"startDateAndTime := (startHour asString, ' hours', ' + ' ,startMinute asString, ' minutes', ' + ', '  + ', DateAndTime localOffset)."
	startDateAndTime := ((startDate asDate) + startHour hours + startMinute minutes + DateAndTime localOffset) asDateAndTime.
	
	[mock start: startDateAndTime.
	
	mock end: mock start + 1 hours.] on: Error do: [self handleError: 'Please enter a valid date'. ^nil.].

	"mock inspect."
	
	"self halt."
	
	client := NDGoogleButton GoogleClient.
	NDFetchFromGoogleButton testConnection.
	
	client pushEvent: mock.
	client forcePushEvent: mock.
	
	self accept: self.

	
	
	
	dayList do: [:each|
		each date asString = ((mock start)asDate) asString
			ifTrue: [
				|delButton eventTitles eventItem durationCalculator|
				eventItem := PHListGroupItem new.
				eventTitles := PHLabel new;  text: 'Title: ', (mock serverData) summary asString, '
Start: ', ((mock serverData) start - (DateAndTime localOffset)) asTime asString.

				durationCalculator := ((mock serverData) end  - (mock serverData) start).
				(durationCalculator asSeconds) >= 60
					ifTrue: [eventTitles text: eventTitles text, ' 
Duration: '].
				(durationCalculator days) >= 1
					ifTrue: [eventTitles text: eventTitles text, durationCalculator days asString, 'd '].
				(durationCalculator hours) >= 1
					ifTrue: [eventTitles text: eventTitles text, durationCalculator hours asString, 'h '].
				(durationCalculator minutes) >= 1
					ifTrue: [eventTitles text: eventTitles text, durationCalculator minutes asString, 'm '].
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