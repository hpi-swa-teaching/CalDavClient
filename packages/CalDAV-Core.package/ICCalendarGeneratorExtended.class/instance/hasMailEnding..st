as yet unclassified
hasMailEnding: aString

	^ (aString asLowercase subStrings: '$:') includes: 'mailto'