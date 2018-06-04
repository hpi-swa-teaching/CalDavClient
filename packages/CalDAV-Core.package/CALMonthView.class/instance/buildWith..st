as yet unclassified
buildWith: aBuilder

	|newWindow|

	newWindow := aBuilder pluggableWindowSpec new.
	newWindow
		model: self;
		label: 'Month View';
		children: OrderedCollection new.
		
	newWindow children
		add: (self buildNextMonthButton: aBuilder);
		add: (self buildPreviousMonthButton: aBuilder);
		addAll: (self buildDayLists: aBuilder).
	
	^ aBuilder build: newWindow
			