as yet unclassified
newFromLink: aLink

	| calendar remoteCalendar |
	
	calendar := self new.	
	remoteCalendar := PublicCalDAVClient new fetchEventDataFrom: aLink.
	^ self newFromICCalendar: remoteCalendar
		
	