toolbuilder
fullDayButtonLabel
	
	^ self isFullDaySelected
			ifTrue: ['Deactivate Full Day']
			ifFalse: ['Activate Full Day']