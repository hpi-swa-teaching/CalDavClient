as yet unclassified
fetchFromGoogle

	|calendarUrl client eventsICalData|

	"client must be already set up"
	client := NDGoogleButton GoogleClient.

	calendarUrl := NDGoogleCalDavClient calendarURL.
	
	eventsICalData := client fetchEventsICalDataFrom: calendarUrl.
	^eventsICalData.