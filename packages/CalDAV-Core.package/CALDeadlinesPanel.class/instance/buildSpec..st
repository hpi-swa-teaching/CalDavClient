toolbuilder
buildSpec: aBuilder

	| content |
	
	content := aBuilder pluggableScrollPaneSpec new.
	content
		model: self;
		name: 'deadlinesPanel';
		frame: (0 @ 0.1 corner: 1 @ 1);
		children: OrderedCollection new.
	content children
		addAll: (self buildWeekLineWith: aBuilder).
	^ content