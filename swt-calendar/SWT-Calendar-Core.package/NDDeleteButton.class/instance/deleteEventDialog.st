accessing
deleteEventDialog
	
	|dialog|
	dialog := PHDialog new.
	dialog title: 'delete: "', icEvent summary, '" event.'.
	dialog content: (PHLabel new withPadding; text: 'To delete this event click ok.').
	dialog content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #delete to: self).
	dialog content: (PHButton new withPadding; text: 'cancel'; when: #clicked send: #abandon to: dialog).
	dialog openInHand.