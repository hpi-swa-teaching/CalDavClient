initialize
initialize 
	
	self 
		calendars: (SortedCollection new sortBlock: [ :a :b | a name <= b name ]);
		monthPanel: (CALMonthPanel new
			parent: self);
		weekPanel: (CALWeekPanel new 
			parent: self)