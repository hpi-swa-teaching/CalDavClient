toolbuilder
windowFields: aBuilder
	
	^OrderedCollection new
			addAll: (self buildStandardFields: aBuilder);
		 	addAll: (self buildButtons: aBuilder);
			addAll: (self buildFields: aBuilder);
			yourself