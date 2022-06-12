accessing
startDay

	^ startDay ifNil: [startDay := Date today] "for now"