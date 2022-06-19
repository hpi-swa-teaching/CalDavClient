toolbuilder
events

	| eventBlock |
	
	eventBlock := OrderedCollection new.
	1 to: self days size do: [:day | eventBlock addAll: 
		((self app eventsIn: (self days at: day)) 
		collect: [:each | self getEventBlockFor: each])].
	^ eventBlock
