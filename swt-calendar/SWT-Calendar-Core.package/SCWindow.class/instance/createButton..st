drawing
createButton: aContext
	| button |

	button := aContext new withLayout.
	button dayList: dayList.
	button calendar: calendar.
	^ button