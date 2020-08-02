as yet unclassified
setDeleteButton: anEvent

	| delButton |
	delButton := SCDeleteButton new; text: 'delete'.
	delButton icEvent: anEvent.
	delButton color: Color red darker.
	^delButton