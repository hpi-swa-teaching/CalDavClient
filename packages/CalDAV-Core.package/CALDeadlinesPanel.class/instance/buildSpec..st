as yet unclassified
buildSpec: aBuilder

	| content |
	
	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		name: 'deadlinesGrid';
		frame: (0@0 corner: 1@1);
		children: OrderedCollection new.
		
	content children
		addAll: (self buildWeekLineWith: aBuilder).
	
	^ content