toolbuilding
buildButtons: aBuilder
 
	| buttons |
	
	buttons := OrderedCollection new.
	buttons add: (self buildEditButton: aBuilder).
	buttons add: (self buildDeleteButton: aBuilder).
	buttons add: (self buildBeginPickerButton: aBuilder).
	buttons add: (self buildEndPickerButton: aBuilder).
	buttons add: (self buildFullDayButton: aBuilder).
	^ buttons