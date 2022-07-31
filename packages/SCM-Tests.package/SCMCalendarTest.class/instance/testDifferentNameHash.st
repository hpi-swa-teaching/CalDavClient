testing
testDifferentNameHash

	| aSecondDemoCalendar |

	aSecondDemoCalendar := (SCMCalendar new
		title: 'aSecondDemoCalendar';
		id: self demoCalendar id).
		
	self assert: aSecondDemoCalendar hash ~= demoCalendar hash

	