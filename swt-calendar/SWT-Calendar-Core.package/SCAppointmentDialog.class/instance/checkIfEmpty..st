updating
checkIfEmpty: dayItem

	dayItem submorphs size > 1
	ifTrue: [
		dayItem submorphs second class = PHLabel
		ifTrue: [
			dayItem submorphs second text = '- There are no events for this day'
			ifTrue: [
				dayItem submorphs second abandon.].].].
	^dayItem