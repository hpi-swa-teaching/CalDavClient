as yet unclassified
displayNoEvents

	| noEventsLabel noEventsItem |
	
	noEventsItem := PHListGroupItem new.
	noEventsItem minSize: 100@10.
	noEventsLabel := PHLabel new.
	noEventsLabel text: '- There are no events for this day'.
	self add: noEventsLabel.