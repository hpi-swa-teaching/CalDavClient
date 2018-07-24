as yet unclassified
expand: anEventBlock in: aCollection after: anIndex by: aWidth

	(anIndex + 1) to: aCollection size do: [ :index | 
		| column |
		column := aCollection at: index.
		(column allSatisfy: [ :otherEvent | (anEventBlock collidesWith: otherEvent) not])
			ifTrue: [anEventBlock increaseColumnSpan: aWidth]
			ifFalse: [^ self]]