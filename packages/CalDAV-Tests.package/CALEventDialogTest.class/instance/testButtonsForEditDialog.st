as yet unclassified
testButtonsForEditDialog

	| buttons |
	
	buttons := editDialog buildButtons: ToolBuilder default.
	self assert: (buttons anySatisfy: [:each | (each label includesSubstring: 'Delete') and: each action = #deleteEvent]).
	self assert: (buttons anySatisfy: [:each | (each label includesSubstring: 'Save') and: each action = #saveEvent]).
	self assert: (buttons anySatisfy: [:each | (each label includesSubstring: 'Begin') and: each action = #pickBeginDate]).
	self assert: (buttons anySatisfy: [:each | (each label includesSubstring: 'End') and: each action = #pickEndDate])