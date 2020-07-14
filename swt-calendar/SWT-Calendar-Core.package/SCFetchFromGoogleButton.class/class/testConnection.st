as yet unclassified
testConnection

	|calendarUrl client calData|

	client := SCGoogleButton GoogleClient.

	calendarUrl := 'https://apidata.googleusercontent.com/caldav/v2/', SCGoogleCalDavClient calendarID, '\'.
	
	[calData := client fetchCalendarDataFrom: calendarUrl.] on: ConnectionClosed do: [
			|waitDialog|
			waitDialog := PHDialog new; title: 'Connection Closed!'.
			waitDialog content: (PHLabel new; text: 'Connection was closed, please wait 4 seconds. Calendar will be automatically refreshed.'); openInHand.
			Transcript show: ''.
			(Delay forSeconds:4)wait.
			waitDialog abandon.
			calData := client fetchCalendarDataFrom: calendarUrl..] 
		on: CalDavRetryException do: [
			|waitDialog|
			waitDialog := PHDialog new; title: 'Retry Error!'.
			waitDialog content: (PHLabel new; text: 'Retry error, please wait 7 seconds. Calendar will be automatically refreshed.'); openInHand.
			Transcript show: ''.
			(Delay forSeconds:7)wait.
			waitDialog abandon.
			calData := client fetchCalendarDataFrom: calendarUrl.].