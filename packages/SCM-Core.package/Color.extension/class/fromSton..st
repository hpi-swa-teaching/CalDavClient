*SCM-Core-override
fromSton: stonReader
	| representation |
	representation := stonReader parseMapOrListRepresentation.
	^ representation isArray
		ifTrue: [ 
			self colorFrom: representation first ] "overriden"
		ifFalse: [ 
			(representation includesKey: #rgb)
				ifTrue: [ 
					self basicNew setRGB: (representation at: #rgb); setAlpha: 1.0 "backwards compatibility" ]
				ifFalse: [ 
					self 
						r: (representation at: #red) 
						g: (representation at: #green) 
						b: (representation at: #blue) 
						alpha: (representation at: #alpha) ] ]