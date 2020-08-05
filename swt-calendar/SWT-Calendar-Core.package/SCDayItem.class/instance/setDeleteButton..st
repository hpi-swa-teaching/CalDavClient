displaying
setDeleteButton: anEvent

	| delButton |
	delButton := SCDeleteButton new; text: 'delete'.
	delButton calDavEvent: anEvent.
	delButton color: Color red darker.
	^delButton