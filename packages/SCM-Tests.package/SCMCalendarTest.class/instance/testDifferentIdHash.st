testing
testDifferentIdHash

	| aSecondDemoCalendar |

	aSecondDemoCalendar := SCMCalendar new
		title: 'demoCalendar';
		id: self demoCalendar id + 1;
		yourself.
		
	self assert: aSecondDemoCalendar hash ~= self demoCalendar hash

	