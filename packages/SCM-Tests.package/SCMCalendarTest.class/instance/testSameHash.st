testing
testSameHash

	| aSecondDemoCalendar |

	aSecondDemoCalendar := (SCMCalendar new
		title: 'demoCalendar';
		id: self demoCalendar id).
		
	self assert: aSecondDemoCalendar hash equals: demoCalendar hash

	