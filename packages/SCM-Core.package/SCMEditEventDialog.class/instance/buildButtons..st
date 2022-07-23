toolbuilding
buildButtons: aBuilder
 
	^ OrderedCollection new
			add: (self buildEditButton: aBuilder);
			add: (self buildDeleteButton: aBuilder);
			add: (self buildBeginPickerButton: aBuilder);
			add: (self buildEndPickerButton: aBuilder);
			add: (self buildFullDayButton: aBuilder);
			add: (self buildColorPickerButton: aBuilder);
			yourself