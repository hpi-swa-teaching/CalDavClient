creation
handleError: aString

	| dialog |
	
	dialog := PHDialog new.
	dialog content: (PHLabel new text: aString).
	dialog content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #delete to: dialog).
	dialog openFor: self