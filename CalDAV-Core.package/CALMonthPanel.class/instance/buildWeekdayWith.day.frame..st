toolbuilder
buildWeekdayWith: aBuilder day: aWeekday frame: aFrame 

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		enabled: false;
		label: (self weekdaysAt: aWeekday);  
		frame: aFrame; 
		yourself