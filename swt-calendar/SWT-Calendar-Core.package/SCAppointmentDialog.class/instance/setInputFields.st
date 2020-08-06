accessing
setInputFields

	self titleAreaLabel: (PHLabel new text:'Enter Title:'; pointSize: 25).
	self titleArea: (PHTextArea new withPadding).
	self startDayArea: (PHTextAreaWithLabel new withPadding; text: 'Enter Day:').
	self startDayArea placeholder: '5'.
	self startMonthArea:  (PHTextAreaWithLabel new withPadding; text: 'Enter Month:').
	self startMonthArea placeholder: 'July'.
	self startYearArea:  (PHTextAreaWithLabel new withPadding; text: 'Enter Year:').
	self startYearArea placeholder: '2020'.
	
	self startHourArea: (PHTextArea new withPadding).
	self startHourArea 
		vertical: true;
		placeholder: '00'.
					
	self startMinuteArea: (PHTextArea new withPadding).	
	self startMinuteArea 
		vertical: true;
		placeholder: '00'.