comparing
hash

	^ {self title . self beginDay . self beginHour. self beginMinute. self beginMonth. self beginYear. self endYear . 
		self endMonth . self endDay . self endHour . self endMinute . self participants . self location} 
		hash