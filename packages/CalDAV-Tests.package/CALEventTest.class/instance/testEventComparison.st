testing
testEventComparison
	| anEvent anotherEvent |
	
	anEvent := self demoEvent.
	anotherEvent := self demoEventDuringDemoEvent.
	
	self assert: (anEvent <= anotherEvent) description: 'Events should sort after begin'.
	self assert: ((anotherEvent <= anEvent) not).
	anotherEvent begin: self begin.
	self assert: (anotherEvent <= anEvent) description: 'Events with same begin should sort after end'.
	self assert: ((anEvent <= anotherEvent) not).
	anotherEvent 
		end: self end;
		title: 'ZZTop Konzert'.
	self assert: (anEvent <= anotherEvent) description: 'Events with same begin and end should sort after title'.
	self assert: ((anotherEvent <= anEvent) not).
	anotherEvent title: self title.
	anotherEvent location: 'woanders'.
	self assert: (anEvent <= anotherEvent xor: anotherEvent <= anEvent) description: 'Events with same begin, end, title should have a sorting'.
	self assert: (anEvent <= anEvent) description: 'less equal should be reflexive'