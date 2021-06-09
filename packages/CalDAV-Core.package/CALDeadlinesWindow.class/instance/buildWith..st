toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALDeadlinesWindow';
		extent: 400@400;
		children: OrderedCollection new.
	windowSpec children
		add: (self buildPanelWith: aBuilder);
		add: (self buildQuickViewButtonWith: aBuilder);
		add: (self buildAppButtonWith: aBuilder).
	^ aBuilder build: windowSpec