accessing
startDate

	^ startDate ifNil: [startDate := Date today] "for now"