initialization
appendOptionalInfo

	^ ((self event location ~= '') and: [self event location ~= nil]) ifTrue: [', ' , self event location].