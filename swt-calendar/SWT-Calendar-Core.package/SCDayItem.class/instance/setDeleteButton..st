displaying
setDeleteButton: anEvent

	| delButton |
	delButton := SCDeleteButton new; text: 'delete'.
	delButton calDavEvent: anEvent.
	delButton calendar: calendar.
	delButton color: Color red darker.
	^delButton