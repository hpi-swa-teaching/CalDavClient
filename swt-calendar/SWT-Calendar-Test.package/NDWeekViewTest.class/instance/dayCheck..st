as yet unclassified
dayCheck: aDay

 |submorphsOfGroupItem currentButton|
	dayList do: [:each | 
		submorphsOfGroupItem := each submorphs.
		currentButton := submorphsOfGroupItem second.
	aDay asString = currentButton date asString
		ifTrue: [^true].].