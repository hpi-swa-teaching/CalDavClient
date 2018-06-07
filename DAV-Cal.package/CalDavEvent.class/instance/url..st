accessing
url: anObject
	
	url 
		ifNil: [
			url := anObject. 
			self serverData ifNotNil: [self serverData url: anObject]]
		ifNotNil: [Exception signal: 'You shall not change the url of an event']
	