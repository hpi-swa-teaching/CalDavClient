as yet unclassified
handleMissingTitle
	"comment stating purpose of message"

	| dialog |
	dialog:=PHDialog new.
	dialog content:(PHLabel new text:'Please enter a title for your appointment.').
	dialog content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #delete to: dialog).
	dialog openFor: self