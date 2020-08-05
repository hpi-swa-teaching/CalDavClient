drawing
createButton: context

	| button calendar |

	button := context new withLayout.
	button dayList: dayList.
	button calendar: calendar.
	^ button