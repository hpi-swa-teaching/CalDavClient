as yet unclassified
testEventsDeletedCorrectly
	
	| spec |
	
	spec := self quickView buildWith: (ToolBuilder default). 
	(self quickView dependents at: 2) abandon.
	self assert: (((spec dependents) includes: PluggableListMorphPlus) not) description: 'Events should be deleted'. 