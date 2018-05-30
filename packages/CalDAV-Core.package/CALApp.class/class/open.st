as yet unclassified
open

	| app |
	
	app := self new.
	app addCalendar: (CALCalendar withName: 'MyCalendar').	
	app calendars do: [:each | each restoreEvents].	
	
	^ToolBuilder default open: app