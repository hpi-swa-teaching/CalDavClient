testing
testDifferentNameHash

	| aSecondDemoCalendar |

	aSecondDemoCalendar := SCMCalendar new
		title: 'aSecondDemoCalendar';
		id: self calendar id;
		yourself.
		
	self assert: aSecondDemoCalendar hash ~= self calendar hash

	