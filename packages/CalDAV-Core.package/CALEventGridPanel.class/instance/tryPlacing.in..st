event block layouting
tryPlacing: anEvent in: aCollection

	| possibleColumn |
	
	possibleColumn := aCollection detect: [ :column | column allSatisfy: [ :otherEvent | (anEvent collidesWith: otherEvent) not ]] ifNone: [^ self].
	possibleColumn add: anEvent. 
	anEvent placed: true