toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALQuickView';
		extent: 400 @ 400;
		children: OrderedCollection new;
		yourself.
	windowSpec children
		add: (self buildEventListWith: aBuilder);
		add: (self buildAddEventButtonWith: aBuilder);
		add: (self buildRefreshButtonWith: aBuilder);
		add: (self buildDeadlinesViewButtonWith: aBuilder);
		add: (self buildAppButtonWith: aBuilder).
	^ aBuilder build: windowSpec