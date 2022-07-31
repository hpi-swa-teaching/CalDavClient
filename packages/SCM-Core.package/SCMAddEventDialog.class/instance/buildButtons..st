toolbuilder
buildButtons: aBuilder

	^ OrderedCollection new
			add: (self buildSaveButton: aBuilder);
			add: (self buildBeginPickerButton: aBuilder);
			add: (self buildEndPickerButton: aBuilder);
			add: (self buildFullDayButton: aBuilder);
			add: (self buildColorPickerButton: aBuilder);
			yourself