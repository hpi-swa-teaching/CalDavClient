running
setUp
	
	weekView := CALWeekView new
		parent: CALApp new;
		day: Date today.
	weekPanel := CALWeekPanel new.
	weekPanel day: self firstOfMarch2018.
	weekPanel parent: CALApp new