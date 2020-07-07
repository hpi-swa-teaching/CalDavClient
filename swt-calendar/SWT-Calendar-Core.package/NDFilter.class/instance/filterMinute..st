as yet unclassified
filterMinute: anInteger

	| input |
	
	input := (anInteger asInteger).
	
	(input isInteger)
		ifFalse: [appointmentDialog handleError: 'Wrong input format. Please enter a correct number.'.^false]
		ifTrue: [
			((input >= 0) and: (input <= 59))
				ifFalse: [appointmentDialog handleError: 'Wrong minute format. Please enter a correct number.'.^false]
				ifTrue: [^input]
			]
