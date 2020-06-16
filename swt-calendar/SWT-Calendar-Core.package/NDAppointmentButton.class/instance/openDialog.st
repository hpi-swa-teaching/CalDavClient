as yet unclassified
openDialog

	| dialog |

	dialog := PHDialog new.

	dialog content: (PHTextAreaWithLabel new withPadding; text: 'Title:').
	dialog content: (PHLabel new withPadding; text: 'Date:').
	dialog content: (PHButton new withPadding; text: 'Select Date...'; when: #clicked send: #openCalendarDialog to: self).
	dialog content: (PHTextAreaWithLabel new withPadding; text: 'Start:').
	
	dialog content: (PHTextAreaWithLabel new withPadding; text: 'End:').
	
	dialog content: (PHButton new withPadding; text: 'OK').

	dialog openFor: self.