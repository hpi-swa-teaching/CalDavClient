as yet unclassified
events: anOrderedCollection

	events := anOrderedCollection.
	self submorphs size > 1
				ifTrue:[ 
					2 to: self submorphs size do: [:each |
						self submorphs last abandon].
					].
	anOrderedCollection isEmpty
		ifFalse:[
			|eventItem delButton eventTitles durationCalculator|
			events do: [:each|
				
				eventItem := PHListGroupItem new.
				eventTitles := PHLabel new;  text: 'Title: ', (each serverData) summary asString, '
Start: ', ((each serverData) start) asTime asString, '
Duration: '.
				durationCalculator := ((each serverData) end  - (each serverData) start).
				(durationCalculator days) >= 1
					ifTrue: [eventTitles text: eventTitles text, durationCalculator days asString, 'd '].
				(durationCalculator hours) >= 1
					ifTrue: [eventTitles text: eventTitles text, durationCalculator hours asString, 'h '].
				(durationCalculator minutes) >= 1
					ifTrue: [eventTitles text: eventTitles text, durationCalculator minutes asString, 'm '].

				eventTitles minSize: 100@10.
				delButton := SCDeleteButton new; text: 'delete'.
				delButton icEvent: each.
				delButton color: Color red darker.
				eventItem add: eventTitles.
				eventItem add: delButton.
				self add: eventItem.
				delButton listItem: eventItem.]
		]
		ifTrue: [
			| noEventsLabel noEventsItem |
			noEventsItem := PHListGroupItem new.
			noEventsItem minSize: 100@10.
			noEventsLabel := PHLabel new.
			noEventsLabel text: '- There are no events for this day'.
			self add: noEventsLabel.
			"self add: noEventsItem. "].