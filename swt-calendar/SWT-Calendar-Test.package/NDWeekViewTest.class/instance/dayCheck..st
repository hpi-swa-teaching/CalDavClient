as yet unclassified
dayCheck: anObject

 |submorphsOfGroupItem currentButton|
	dayList do: [:each | 
		submorphsOfGroupItem := each submorphs.
		currentButton := submorphsOfGroupItem second.
	anObject asString = currentButton date asString
		ifTrue: [^true].].