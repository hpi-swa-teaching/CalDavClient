as yet unclassified
checkIfEmptyDay: aListItem

	super dayList do: [:each |
		each submorphs size > 1
			ifTrue: [
				each submorphs second class = PHLabel
					ifFalse: [
						each submorphs do: [:everySubmorph |
							everySubmorph submorphs first = aListItem submorphs first
								ifTrue: [
									each submorphs size = 1
										ifTrue: [
											| noEventsLabel noEventsItem |
											noEventsItem := PHListGroupItem new.
											noEventsItem minSize: 100@10.
											noEventsLabel := PHLabel new.
											noEventsLabel text: '- There are no events for this day'.
											self add: noEventsLabel.]] ]]]].