toolbuilder
buildSpec: aBuilder

	| content |
	
	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		name: 'weekGrid';
		children: OrderedCollection new.
	content children
		addAll: (self buildDayLineWith: aBuilder);
		addAll: (self buildDayGridsWith: aBuilder).
	^ content