testing
testDifferentIdHash

	| aSecondDemoCalendar |

	aSecondDemoCalendar := SCMCalendar new
		title: #calendar;
		id: self calendar id + 1;
		yourself.
		
	self assert: aSecondDemoCalendar hash ~= self calendar hash

	