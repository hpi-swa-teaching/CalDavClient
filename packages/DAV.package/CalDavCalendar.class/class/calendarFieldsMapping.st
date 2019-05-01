as yet unclassified
calendarFieldsMapping
	
	^ Dictionary newFrom: 
	   {#displayName -> #'D:displayname' . 
	     #contentType -> #'D:getcontenttype' .
	     #ctag -> #'cs:getctag'.
	     #serverColor -> #'ical:calendar-color'.
	     #calendarDescription ->#'caldav:calendar-description'}