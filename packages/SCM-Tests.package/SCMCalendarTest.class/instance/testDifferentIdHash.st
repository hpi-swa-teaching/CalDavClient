testing
testDifferentIdHash

	| aSecondDemoCalendar |

	aSecondDemoCalendar := (SCMCalendar new
		title: 'demoCalendar';
		id: self demoCalendar id + 1).
		
	self assert: aSecondDemoCalendar hash ~= demoCalendar hash

	