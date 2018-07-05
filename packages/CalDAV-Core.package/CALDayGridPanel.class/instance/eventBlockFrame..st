as yet unclassified
eventBlockFrame: anEvent

	| bottomRight |
	
	bottomRight := self yEndPositionFor: anEvent.
	^ (self xLeftFor: anEvent) @ (self yBeginPositionFor: anEvent)
		corner: (self xLeftFor: anEvent) + (self widthFor: anEvent) @ bottomRight