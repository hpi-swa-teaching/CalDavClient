as yet unclassified
buildSpec: aBuilder

	| content |
	
	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		name: 'deadlinesGrid';
		children: OrderedCollection new.
		
	content children
		addAll: (self buildWeekLineWith: aBuilder).
	
	^ content