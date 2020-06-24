as yet unclassified
events: anOrderedCollection
	|delButton showButton eventTitles|
	events := anOrderedCollection.
	self submorphs size > 1
				ifTrue:[ 
					2 to: self submorphs size do: [:each |
						self submorphs last abandon].
					].
	anOrderedCollection isEmpty
		ifFalse: [
			delButton := PHButton new.
			showButton := NDDayButton new.
			delButton text: 'delete Events'.
			delButton color: Color red darker.
			showButton date: self date.
			eventTitles := events collect: #summary.
			showButton eventLabel: (eventTitles joinSeparatedBy: '
').
			self add: showButton.
			self add: delButton.]
		ifTrue: [
			| noEventsLabel |
			noEventsLabel := PHLabel new.
			noEventsLabel text: '- There are no events for this day'.
			self add: noEventsLabel.].