*SWT-Calendar-Core
createValue: aString parameters: aDictionary default: aType
	| iCalType |
	iCalType := aDictionary at: 'VALUE' ifAbsent: [ aType iCalType ].
	^self createValue: aString parameters: aDictionary type: iCalType