accessing
calendarNames

	| calendarnames |
	
	calendarnames := OrderedCollection new.
	self calendars do: [:each | calendarnames add: each name].
	^ calendarnames