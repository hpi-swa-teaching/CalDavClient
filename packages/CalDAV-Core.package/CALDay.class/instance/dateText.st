accessing
dateText
	date ifNil: [^''] ifNotNil: [^(date dayOfMonth) asString]