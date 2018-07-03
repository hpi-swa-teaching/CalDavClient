toolbuilder
buildSpec: aBuilder

	| newPane |

	newPane := aBuilder pluggablePanelSpec new.
	newPane
		model: self;
		name: 'monthPanel';
		children: OrderedCollection new.
		
	newPane children
		add: (self buildNextMonthButton: aBuilder);
		add: (self buildPreviousMonthButton: aBuilder);
		add: (self buildMonthTextWith: aBuilder);
		add: (self buildDaysOfMonthWith: aBuilder).
	
	^ newPane
			