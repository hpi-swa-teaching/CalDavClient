comparing
<= anEvent
	
	self begin < anEvent begin ifTrue: [^ true].
	(self begin = anEvent begin and: [ self end < anEvent end]) ifTrue:  [^ true].	
	(self begin = anEvent begin and: [ self end = anEvent end] and: self title < anEvent title) ifTrue: [^ true].
	(self begin = anEvent begin and: [ self end = anEvent end] and: [self title = anEvent title]) ifTrue: [^ self hash <= anEvent hash].
	^ false
		