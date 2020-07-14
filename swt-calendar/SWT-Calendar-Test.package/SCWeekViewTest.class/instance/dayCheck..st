as yet unclassified
dayCheck: aDay


	dayList do: [:each | 
		aDay asString = each date asString
		ifTrue: [^true].].