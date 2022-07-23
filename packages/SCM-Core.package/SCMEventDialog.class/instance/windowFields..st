toolbuilder
windowFields: aBuilder
	
	^ OrderedCollection new
			addAll: (self buildFields: aBuilder);
		 	addAll: (self buildButtons: aBuilder);
			add: (self buildCalendarList: aBuilder);
			yourself