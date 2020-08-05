as yet unclassified
testConnection

	|calendarUrl client calData|

	client := SCConnectToSabreButton sabreClient.

	calendarUrl := client url.
	
	[calData := client fetchCalendarDataFrom: calendarUrl.] on: ConnectionClosed do: [
			|waitDialog|
			waitDialog := PHDialog new; title: 'Connection Closed!'.
			waitDialog content: (PHLabel new; text: 'Connection was closed, please wait 4 seconds. Calendar will be automatically refreshed.'); openInHand.
			(Delay forSeconds: 4 ) wait.
			Transcript show: ''. "otherwise the next abandon command will be executed before delay is over"
			waitDialog abandon.
			calData := client fetchCalendarDataFrom: calendarUrl..] 
		on: CalDavRetryException do: [
			|waitDialog|
			waitDialog := PHDialog new; title: 'Retry Error!'.
			waitDialog content: (PHLabel new; text: 'Retry error, please wait 7 seconds. Calendar will be automatically refreshed.'); openInHand.
			Transcript show: ''.
			(Delay forSeconds: 7 ) wait. "otherwise the next abandon command will be executed before delay is over"
			waitDialog abandon.
			calData := client fetchCalendarDataFrom: calendarUrl.].