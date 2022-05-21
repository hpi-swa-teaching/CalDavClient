as yet unclassified
testOtherAccessors

	self demoEvent
		title: 'Create start-Up with granny';
		description: 'We need 1M!!!';
		participants: #('Dorothee');
		location: 'city park'.
	
	self assert: 'Create start-Up with granny' equals: self demoEvent title.
	self assert: 'We need 1M!!!' equals: self demoEvent description.
	self assert: #('Dorothee') equals: self demoEvent participants.
	self assert: 'city park' equals: self demoEvent location.