as yet unclassified
addEvents

	|eventItem delButton eventTitle|
	events do: [:each|
		eventItem := PHListGroupItem new.
		eventTitle:= self setEventTitle: each.
		delButton := self setDeleteButton: each.
		eventItem add: eventTitle.
		eventItem add: delButton.
		self add: eventItem.
		delButton listItem: eventItem.]