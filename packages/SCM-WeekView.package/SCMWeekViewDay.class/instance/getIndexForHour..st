convenience
getIndexForHour: anHour

	| index |	

	(anHour <=7) ifTrue: [index := 1].
	(anHour > 7 and: anHour <= 20) ifTrue: [index := anHour - 5].
	(anHour > 20) ifTrue: [index := 15].
	
	^ index
	