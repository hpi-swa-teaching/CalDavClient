initialize
initialize 
	
	self 
		calendars: (SortedCollection new sortBlock: [:a :b | a name <= b name]);
		monthPanel: (CALMonthPanel new app: self);
		weekPanel: (CALWeekPanel new app: self)