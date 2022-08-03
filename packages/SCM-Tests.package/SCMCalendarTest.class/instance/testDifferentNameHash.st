testing
testDifferentNameHash

	| aSecondDemoCalendar |

	aSecondDemoCalendar := SCMCalendar new
		title: 'aSecondDemoCalendar';
		id: self demoCalendar id;
		yourself.
		
	self assert: aSecondDemoCalendar hash ~= self demoCalendar hash

	