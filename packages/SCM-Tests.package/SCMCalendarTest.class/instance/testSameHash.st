testing
testSameHash

	| aSecondDemoCalendar |

	aSecondDemoCalendar := SCMMockCalendar new
		title: #demoCalendar;
		id: self calendar id;
		yourself.
		
	self assert: aSecondDemoCalendar hash equals: self calendar hash

	