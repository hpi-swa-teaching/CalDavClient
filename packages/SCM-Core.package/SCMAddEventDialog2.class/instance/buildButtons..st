toolbuilding
buildButtons: aBuilder

	| buttons |		
		
	buttons := OrderedCollection new.
	buttons add: (self buildSaveButton: aBuilder).
	buttons add: (self buildBeginPickerButton: aBuilder).
	buttons add: (self buildEndPickerButton: aBuilder).
	buttons add: (self buildFullDayButton: aBuilder).
	buttons add: (self buildColorPickerButton: aBuilder).
	^ buttons