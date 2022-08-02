initialization
hourAndMinuteAsText: aDateAndTime
	"Return string in format hh:mm"

	^ (String streamContents: [:aStream | aDateAndTime asTime
			print24: true showSeconds: false on: aStream]) asText