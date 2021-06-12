toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALQuickView';
		extent: 300 @ 200;
		children: OrderedCollection new;
		yourself.
	windowSpec children
		add: (self buildEventListWith: aBuilder);
		add: (self buildDeadlinesViewButtonWith: aBuilder);
		add: (self buildAppButtonWith: aBuilder).
	^ aBuilder build: windowSpec