toolbuilding
fullDayButtonLabel
	
	self fullDaySelected
		ifTrue: [ ^ ' Deactivate Full Day' ]
		ifFalse: [^ 'Activate Full Day' ]