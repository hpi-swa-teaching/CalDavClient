initialization
startDrag: anEvent

	| transferMorph |
	
	anEvent hand hasSubmorphs ifTrue: [^ self].
	transferMorph := TransferMorph withPassenger: self event from: self.
	transferMorph updateFromUserInputEvent: anEvent.
	anEvent hand grabMorph: transferMorph.
	self mouseEnterDragging: anEvent