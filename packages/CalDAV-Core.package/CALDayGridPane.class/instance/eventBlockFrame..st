as yet unclassified
eventBlockFrame: anEvent

	| bottomRight |
	
	bottomRight := self yEndPositionFor: anEvent.
	anEvent isMultipleDay ifTrue: [bottomRight := 1].
	^ (self xLeftFor: anEvent) @ (self yBeginPositionFor: anEvent)
		corner:
			((self xLeftFor: anEvent) + (self widthFor: anEvent)) @ bottomRight