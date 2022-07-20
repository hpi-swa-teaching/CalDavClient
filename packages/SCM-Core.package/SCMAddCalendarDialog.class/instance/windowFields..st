toolbuilding
windowFields: aBuilder
	
	^ OrderedCollection new
			add: (self buildCalendarTitle: aBuilder);
			add: (self buildColorPickerButton: aBuilder);
			add: (self buildSubmitButton: aBuilder);
			yourself