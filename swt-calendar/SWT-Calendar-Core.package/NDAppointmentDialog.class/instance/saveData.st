as yet unclassified
saveData

	| mock client cal|
	cal:=CalDavCalendar new initialize.
	cal url: GoogleCalDAVClient calendarURL.
	"mock := ICEvent new."
	mock:=cal newEvent.
	mock summary: self titleArea textArea text.
	"mock url: GoogleCalDAVClient calendarUrl."
	mock start: Date today.
	mock end: Date today.
	client:=NDGoogleButton GoogleClient.
	client pushEvent: mock.
	client forcePushEvent: mock.
	
	self accept: self.