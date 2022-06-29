as yet unclassified
testOtherAccessors

	self pastEvent
		title: 'Create start-Up with granny';
		description: 'We need 1M!!!';
		participants: 'Dorothee';
		location: 'city park'.
	
	self assert: 'Create start-Up with granny' equals: self pastEvent title.
	self assert: 'We need 1M!!!' equals: self pastEvent description.
	self assert: 'Dorothee' equals: self pastEvent participants.
	self assert: 'city park' equals: self pastEvent location