as yet unclassified
addContent

	| timePage |
	
	timePage := PHPage row
		add: startHourArea;
		add: ((PHLabel new) text: ':';
			pointSize: 30);
		add: startMinuteArea.
		
	self content: titleAreaLabel.
	self content: (titleArea).
	self content: ((PHLabel new) text:'Enter Date (e.g. 5 July 1984): ';pointSize: 25).
	self content: (startDayArea).
	self content: (startMonthArea).
	self content: (startYearArea).
	self content: ((PHLabel new) text:'Enter Time';pointSize: 25).
	self content: timePage.
	self content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #saveData to: self).