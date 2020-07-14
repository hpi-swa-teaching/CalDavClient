as yet unclassified
fetchFromGoogle

	|calendarUrl client eventsICalData|

	"client must be already set up"
	client := SCGoogleButton GoogleClient.

	calendarUrl := SCGoogleCalDavClient calendarURL.
	
	eventsICalData := client fetchEventsICalDataFrom: calendarUrl.
	^eventsICalData.