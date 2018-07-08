as yet unclassified
testColors

	self assert: (dayGrid children allSatisfy: [ :each | each color isNil not]) description: 'all event blocks should have a color'