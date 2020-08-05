drawing
createButton: aContext with: aCalendar and: aDayList

	| button |

	button := aContext new withLayout.
	button dayList: aDayList.
	button calendar: aCalendar.
	^ button