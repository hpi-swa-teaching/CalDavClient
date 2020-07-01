as yet unclassified
handleInvalidDate
	"comment stating purpose of message"

	| dialog |
	dialog:=PHDialog new.
	dialog content:(PHLabel new text:'Please enter a valid date').
	dialog content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #delete to: dialog).
	dialog openFor: self