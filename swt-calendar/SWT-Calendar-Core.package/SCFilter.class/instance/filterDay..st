filtering
filterDay: aDay
	
	| input |
	input := (aDay asInteger).
	
	(input isInteger)
		ifTrue: [
			((input > self minimumDays) and: (input <= self maximumDays))
				ifTrue: [^input]
				ifFalse: [appointmentDialog handleError: 'Wrong day format. Please choose a number between 1-31,
due to the selected month'. ^false]
			]
		ifFalse: [appointmentDialog handleError: 'Wrong day format. Please enter a number.'. ^false].
	

