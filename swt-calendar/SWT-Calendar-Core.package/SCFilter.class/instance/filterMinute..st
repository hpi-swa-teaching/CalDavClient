filtering
filterMinute: anInteger

	| input |
	
	input := anInteger asInteger.
	
	input isInteger
		ifFalse: [appointmentDialog handleError: 'Wrong input format. Please enter a correct number.'.^false]
		ifTrue: [
			(input between: self minimumMinutes and: self maximumMinutes)
				ifFalse: [appointmentDialog handleError: 'Wrong minute format. Please enter a correct number.'.^false]
				ifTrue: [^input]
			]
