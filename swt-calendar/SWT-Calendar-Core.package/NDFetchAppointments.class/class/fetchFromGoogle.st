as yet unclassified
fetchFromGoogle

	|calendarUrl client eventsICalData eventsDict eventsICCal eventsCollection eventsData|

	"client must be already set up"
	client := NDGoogleButton GoogleClient.
	calendarUrl := 'https://apidata.googleusercontent.com/caldav/v2/peterpbraun@gmail.com/events'.
	
	Transcript clear.

	eventsICalData := client fetchEventsICalDataFrom: calendarUrl.
	^eventsICalData.
	"eventsDict := Dictionary new.	
	eventsICCal := ICCalendar new.
	eventsCollection := Collection new.
	eventsData := ICEvent new.
	eventsICalData do:[:each |
		eventsDict := each.
		eventsICCal := eventsDict at: #calendarData.
		eventsCollection := eventsICCal events.
		eventsData := eventsCollection first.
		^eventsData]."
		"Transcript show: 'Betreff: ', eventsData summary; cr.
		Transcript show: 'Ort: ', eventsData location; cr.
		Transcript show: 'Anfang: ', eventsData start; cr.
		Transcript show: 'Ende: ', eventsData end; cr; cr]."
	
	"Date today > eventsData start
		ifTrue: [Transcript show: eventsData start + 5 days ; cr].
	Transcript show: Date today asVCardString."