testing
testButtonPresence

	| spec buttons |
	
	spec := self app buildWith: ToolBuilder default.
	buttons := Dictionary newFrom:
	{'Add Calendar' -> #openAddCalendarDialog.
	  'Delete Calendar' -> #openDeleteCalendarDialog.
	  'Import ICS Calendar' -> #importCalendar.
	  'Import CalDAV Calendar' -> #importSyncCalendar.
	  'Refresh' -> #refreshCalendars}.
	
	buttons associationsDo: [ :each | self assert: spec hasButtonLabeled: each key performing: each value]