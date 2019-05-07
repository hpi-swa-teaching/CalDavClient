as yet unclassified
mailEndingOf: aString

	(self hasMailEnding: aString)
		ifTrue: [^ (aString subStrings: '$:') last]
		ifFalse: [^ '']