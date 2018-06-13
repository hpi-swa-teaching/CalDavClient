as yet unclassified
buildWith: aBuilder

	|newWindow|

	newWindow := aBuilder pluggableWindowSpec new.
	newWindow
		model: self;
		label: 'Day View';
		children: OrderedCollection new.
		
	newWindow children
		add: (self buildNextDayButton: aBuilder);
		add: (self buildPreviousDayButton: aBuilder);
		add: (self buildDayTextWith: aBuilder);
		addAll: (self buildTimeLabels: aBuilder);
		addAll: (self buildEventBlocks: aBuilder).
	
	^ aBuilder build: newWindow
			