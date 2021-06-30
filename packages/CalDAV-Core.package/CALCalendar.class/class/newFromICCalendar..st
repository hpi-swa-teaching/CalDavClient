initialize
newFromICCalendar: anICCalendar

	| calendar |
	
	calendar := self withName: anICCalendar name.
	anICCalendar events do: [:each | calendar addEvent: (CALEvent newFromICEvent: each)].	
	^ calendar
		
	