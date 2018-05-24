as yet unclassified
open

	| app |
	
	app := self new.
	app selectedCalendar: (CALCalendar new name: 'MyCalendar').	
	app calendars do: [:each | each restoreEvents].	
	
	^ToolBuilder default open: app