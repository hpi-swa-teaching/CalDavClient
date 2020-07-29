as yet unclassified
fetchFromSabre

	|calendarUrl client eventsICalData|

	"client must be already set up"
	client := SCSabreButton sabreClient.
	calendarUrl := SCSabreButton sabreClient url.
	
	eventsICalData := client fetchEventsICalDataFrom: calendarUrl.
	^eventsICalData.