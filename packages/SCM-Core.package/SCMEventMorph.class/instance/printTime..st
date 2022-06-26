extracting
printTime: aDateAndTime
	"Return as string 'hh:mm'"

	^ String streamContents:
		[ :aStream | aDateAndTime asTime print24: true showSeconds: false on: aStream]