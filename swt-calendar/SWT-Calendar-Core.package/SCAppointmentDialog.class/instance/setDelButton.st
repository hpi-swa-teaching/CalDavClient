updating
setDelButton

	| delButton |
	delButton := SCDeleteButton new; text: 'delete'.
	delButton icEvent: mock.
	delButton color: Color red darker.
	^delButton