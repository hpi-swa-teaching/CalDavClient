initialize-release
initialize
	
	super initialize.
	self class GoogleClient.
	self text: 'Already connected to Google'.
	(GoogleClient clientKey isNil or: [GoogleClient clientId isNil])
		ifTrue: [self text: 'Please add your developer code to GoogleCalDAVClient -> clientId/clientKey'].
	(GoogleClient accessToken isNil or: [GoogleClient refreshToken isNil])
			ifTrue: [self text: 'Connect to Google'.].
	self color: Color blue.
	
	self calendarID: (PHTextArea new).
	self calendarID placeholder: 'youremail@gmail.com'.
	calendarIDDialog := PHDialog new.
	calendarIDDialog content:(PHPage new withPadding; add: (PHLabel new text: 'Connection to Google was successful.
Please enter your CalendarID:'); add: calendarID; add:((PHButton label: 'OK') when: #clicked send: #getCalendarID to: self)).
	
	self when: #clicked send: #openDialog to: self. 