testing
testButtonsForEditDialog

	| buttons |
	
	buttons := self editDialog buildButtons: ToolBuilder default.
	self assert: (buttons anySatisfy: [:each | each label = #fullDayButtonLabel and: [each action = #switchFullDaySelected]]).
	self assert: (buttons anySatisfy: [:each | (each label includesSubstring: 'Delete') and: [each action = #deleteEvent]]).
	self assert: (buttons anySatisfy: [:each | (each label includesSubstring: 'Save') and: [each action = #saveEvent]]).
	self assert: (buttons anySatisfy: [:each | (each label includesSubstring: 'Begin') and: [each action = #pickBeginDate]]).
	self assert: (buttons anySatisfy: [:each | (each label includesSubstring: 'End') and: [each action = #pickEndDate]]).
	self assert: (buttons anySatisfy: [:each | (each label includesSubstring: 'Color') and: [each action = #pickColor]]).