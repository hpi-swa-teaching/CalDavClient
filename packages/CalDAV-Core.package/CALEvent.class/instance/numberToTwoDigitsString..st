accessing
numberToTwoDigitsString: aNumber

	aNumber < 10 ifTrue: [^('0',aNumber asString)] ifFalse: [^(aNumber asString)]