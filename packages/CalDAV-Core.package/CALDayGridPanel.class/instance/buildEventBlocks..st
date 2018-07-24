toolbuilder
buildEventBlocks: aBuilder

	| todaysEvents |
	
	todaysEvents := self parent eventsIn: self day.
	^ todaysEvents collect: [ :each | self buildEventBlockFor: each with: aBuilder ]