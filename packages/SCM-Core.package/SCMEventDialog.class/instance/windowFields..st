toolbuilding
windowFields: aBuilder
	
	| windowFields |
	
	windowFields := OrderedCollection new.
	windowFields 
		addAll: (self buildStandardFields: aBuilder);
	 	addAll: (self buildButtons: aBuilder);
		addAll: (self buildFields: aBuilder);
		yourself.
	^ windowFields
	 