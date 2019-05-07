accessing
calendarFieldsMapping
	
	^ Dictionary newFrom: 
	   {#displayName -> #'d:displayname' . 
	     #contentType -> #'d:getcontenttype' .
	     #ctag -> #'cs:getctag'.
	     #serverColor -> #'ical:calendar-color'.
	     #calendarDescription ->#'caldav:calendar-description'}