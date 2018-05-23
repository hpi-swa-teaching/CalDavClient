as yet unclassified
open

	| app |
	app := self new.
	app selectedCalendar: (CALCalendar new name: 'CalDAV Default Calendar').	
	app calendars do: [:each | each restoreEvents ].	
	
	^ToolBuilder default open: app