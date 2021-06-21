toolbuilder
buildSpec: aBuilder

	| newPanel |

	newPanel := aBuilder pluggablePanelSpec new.
	newPanel
		model: self;
		name: 'monthPanel';
		children: OrderedCollection new.
		
	newPanel children
		add: (self buildNextMonthButton: aBuilder);
		add: (self buildPreviousMonthButton: aBuilder);
		add: (self buildMonthTextWith: aBuilder);
		add: (self buildWeekdaysWith: aBuilder);
		add: (self buildDaysOfMonthWith: aBuilder).  
	
	^ newPanel
			