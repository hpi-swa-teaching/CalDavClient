testing
setUp

	"datePicker := CALDatePicker new.
	datePicker when: #dateChanged send: #dateChanged: to: self"
	
	self flag: #travisDoesNotUnderstandCalendarMorph