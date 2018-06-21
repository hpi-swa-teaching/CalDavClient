as yet unclassified
eventBlockFrame: anEvent

	| bottomRight |
	
	bottomRight := self yPositionFor: anEvent end hour and: anEvent end minute.
	anEvent isMultipleDay ifTrue: [bottomRight := 1].
	^ (self xLeftFor: anEvent) @ (self yPositionFor: anEvent begin hour and: anEvent begin minute)
		corner:
			((self xLeftFor: anEvent) + (self widthFor: anEvent)) @ bottomRight