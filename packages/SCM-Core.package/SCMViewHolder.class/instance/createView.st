loading
createView

	^ self currentViewClass
			createWithEvents: self retrieveEvents andSelectedDate: self selectedDate