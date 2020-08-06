drawing
createButtonListItem: aConnectToSabreButton with: aFetchFromSabreButton and: aNewAppointmentButton

	| buttonListItem | 
	buttonListItem := PHListGroupItem new.
	buttonListItem vertical: false.
	buttonListItem add: aConnectToSabreButton.
	buttonListItem add: aNewAppointmentButton.
	buttonListItem add: aFetchFromSabreButton.
	
	^ buttonListItem