testing
testButtonPresence

	| spec buttons |
	
	spec := self app buildWith: ToolBuilder default.
	buttons := Dictionary newFrom:
	{'Edit Calendar' -> #openCalendarColorEditor.
	'Add Calendar' -> #openAddCalendarDialog.
	  'Delete Calendar' -> #openDeleteCalendarDialog.
	  'Import ICS Calendar' -> #importSubscriptionCalendar.
	  'Import CalDAV Calendar' -> #importWebDAVCalendar.
	  'Refresh' -> #refreshCalendars}.
	
	buttons associationsDo: [:each | self assert: spec hasButtonLabeled: each key performing: 	each value]