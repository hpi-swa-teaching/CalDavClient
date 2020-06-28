as yet unclassified
fetchFromGoogle

	|calendarUrl client eventsICalData externalCalendarURL |" eventsDict eventsICCal eventsCollection eventsData|"

	"client must be already set up"
	client := NDGoogleButton GoogleClient.

	externalCalendarURL := GoogleCalDAVClient new.
	calendarUrl := externalCalendarURL calendarUrl.
	
	eventsICalData := client fetchEventsICalDataFrom: calendarUrl.
	^eventsICalData.
	