event handling
events: anOrderedCollection

	events := anOrderedCollection.
	self submorphs size > 1
				ifTrue:[ 
					2 to: self submorphs size do: [:each |
						self submorphs last abandon].
					].
	events isEmpty
		ifFalse:[
			self addEvents.
		]
		ifTrue: [
			self displayNoEvents].