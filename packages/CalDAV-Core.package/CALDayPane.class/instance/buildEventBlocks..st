as yet unclassified
buildEventBlocks: aBuilder

	| todaysEvents |
	
	todaysEvents := self parent eventsBeginIn: self day.
	^ todaysEvents collect: [ :each | self buildEventBlockFor: each with: aBuilder ]