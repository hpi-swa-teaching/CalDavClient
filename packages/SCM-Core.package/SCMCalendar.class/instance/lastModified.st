accessing
lastModified

	^ lastModified ifNil: [lastModified := DateAndTime now]