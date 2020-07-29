as yet unclassified
filterDay: aDay
	
	| input |
	input := (aDay asInteger).
	
	(input isInteger)
		ifTrue: [
			((input > 0) and: (input <= 31))
				ifTrue: [^input]
				ifFalse: [appointmentDialog handleError: 'Wrong day format. Please choose a number between 1-31.'. ^false]
			]
		ifFalse: [appointmentDialog handleError: 'Wrong day format. Please enter a number.'. ^false].
	

