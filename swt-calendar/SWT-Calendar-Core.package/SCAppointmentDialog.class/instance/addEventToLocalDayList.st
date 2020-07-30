as yet unclassified
addEventToLocalDayList

dayList do: [:each|
		each date asString = ((mock start)asDate) asString
			ifTrue: [
				|delButton eventTitles eventItem durationCalculator|
				eventItem := PHListGroupItem new.
				eventTitles := PHLabel new;  text: 'Title: ', (mock serverData) summary asString, '
Start: ', ((mock serverData) start) asTime asString.

				durationCalculator := ((mock serverData) end  - (mock serverData) start).
				(durationCalculator asSeconds) >= 60
					ifTrue: [eventTitles text: eventTitles text, ' 
Duration: '].
				(durationCalculator days) >= 1
					ifTrue: [eventTitles text: eventTitles text, durationCalculator days asString, 'd '].
				(durationCalculator hours) >= 1
					ifTrue: [eventTitles text: eventTitles text, durationCalculator hours asString, 'h '].
				(durationCalculator minutes) >= 1
					ifTrue: [eventTitles text: eventTitles text, durationCalculator minutes asString, 'm '].
				eventTitles minSize: 150@10.
				delButton := SCDeleteButton new; text: 'delete'.
				delButton icEvent: mock.
				delButton color: Color red darker.
				eventItem add: eventTitles.
				eventItem add: delButton.
					each submorphs size > 1
						ifTrue: [
							each submorphs second class = PHLabel
							ifTrue: [
								each submorphs second text = '- There are no events for this day'
								ifTrue: [
									each submorphs second abandon.].].].
				each add: eventItem.
				delButton listItem: eventItem]
			].