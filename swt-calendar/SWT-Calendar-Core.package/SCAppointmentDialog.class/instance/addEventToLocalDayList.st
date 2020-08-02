updating
addEventToLocalDayList

	dayList do: [:dayItem|
		dayItem date asString = ((mock start)asDate) asString
			ifTrue: [
				|delButton eventTitle eventItem|
				eventItem := PHListGroupItem new.
				eventTitle := self setEventTitle.
				delButton := self setDelButton.
				eventItem add: eventTitle.
				eventItem add: delButton.
				dayItem:= self checkIfEmpty: dayItem.
				dayItem add: eventItem.
				delButton listItem: eventItem]
			].