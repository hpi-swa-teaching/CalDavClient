as yet unclassified
newFromLink: aLink
	
	^ self new 
		caldavLink: aLink;
		updateName;
		updateEvents;
		yourself
		
	