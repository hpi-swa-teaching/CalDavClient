as yet unclassified
newFromICCalendar: anICCalendar

	| calendar |
	
	calendar := self new.
	anICCalendar events do: [ :each | calendar addEvent: (CALEvent newFromICEvent: each)].
	calendar name: anICCalendar name.
	
	^ calendar
		
	