as yet unclassified
fetchFromSabre

	|calendarUrl client eventsICalData|

	"client must be already set up"
	client := SCConnectToSabreButton sabreClient.
	calendarUrl := SCConnectToSabreButton sabreClient url.
	
	eventsICalData := client fetchEventsICalDataFrom: calendarUrl.
	^eventsICalData.