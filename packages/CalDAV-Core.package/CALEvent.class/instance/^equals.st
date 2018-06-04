as yet unclassified
= anEvent
	
	^ ((self title = anEvent title) and:
	[self beginDay = anEvent beginDay] and:
	[self beginMonth = anEvent beginMonth] and:
	[self beginYear = anEvent beginYear] and:
	[self beginHour = anEvent beginHour]) 
	and:
	[(self beginMinute = anEvent beginMinute) and:
	[self endDay = anEvent endDay] and:
	[self endMonth = anEvent endMonth] and:
	[self endYear = anEvent endYear] and:
	[self endHour = anEvent endHour]]
	 and:
	[(self endMinute = anEvent endMinute) and:
	[self location = anEvent location] and:
	[self participants = anEvent participants] and:
	[self description = anEvent description]]