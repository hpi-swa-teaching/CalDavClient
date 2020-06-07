initialize
newFromLink: aLink
	
	^ self new 
		caldavLink: aLink;
		updateName;
		updateEvents;
		yourself
		
	