as yet unclassified
filterHour: anInteger

	| input |
	
	input := (anInteger asInteger).
	
	(input isInteger)
		ifFalse: [appointmentDialog handleError: 'Wrong input format. Please enter a correct number.'.^false]
		ifTrue: [
			((input >= 0) and: (input <= 23))
				ifFalse: [appointmentDialog handleError: 'Wrong hour format. Please enter a correct number.'.^false]
				ifTrue: [^input]
			]
