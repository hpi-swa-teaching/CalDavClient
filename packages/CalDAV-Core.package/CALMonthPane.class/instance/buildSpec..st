toolbuilder
buildSpec: aBuilder

	| newPane |

	newPane := aBuilder pluggablePanelSpec new.
	newPane
		model: self;
		children: OrderedCollection new.
		
	newPane children
		add: (self buildNextMonthButton: aBuilder);
		add: (self buildPreviousMonthButton: aBuilder);
		add: (self buildMonthTextWith: aBuilder);
		addAll: (self buildDayLists: aBuilder).
	
	^ newPane
			