as yet unclassified
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALDeadlinesWindow';
		extent: 400@400;
		children: OrderedCollection new.

	windowSpec children
		add: (self buildPanelWith: aBuilder).
	
	^ aBuilder build: windowSpec