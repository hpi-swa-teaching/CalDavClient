testing
testDayOfYearRange

	self assert: (self deadlinesEventPanel dayOfYear >= 0 and: [self deadlinesEventPanel dayOfYear <= 365])