accessing
isMultipleDay

	 ^ (self beginDay = self endDay and: self beginMonth = self endMonth and: self beginYear = self endYear) not