testing
testSameHash

	| aSecondDemoCalendar |

	aSecondDemoCalendar := SCMCalendar new
		title: 'demoCalendar';
		id: self demoCalendar id;
		yourself.
		
	self assert: aSecondDemoCalendar hash equals: self demoCalendar hash

	