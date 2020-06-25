as yet unclassified
events: anOrderedCollection
	|delButton eventTitles|
	events := anOrderedCollection.
	self submorphs size > 1
				ifTrue:[ 
					2 to: self submorphs size do: [:each |
						self submorphs last abandon].
					].
	anOrderedCollection isEmpty
		ifFalse:[
			|eventItem|			
			events do: [:each|
				eventItem := PHListGroupItem new.
				eventTitles := PHLabel new;  text: each summary asString.
				eventTitles minSize: 100@10.
				delButton := NDDeleteButton new; text: 'delete'.
				delButton icEvent: each.
				delButton color: Color red darker.
				eventItem add: eventTitles.
				eventItem add: delButton.
				self add: eventItem.]
		]
		ifTrue: [
			| noEventsLabel |
			noEventsLabel := PHLabel new.
			noEventsLabel text: '- There are no events for this day'.
			self add: noEventsLabel.].