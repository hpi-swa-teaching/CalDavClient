accessing
url: anObject

	url := anObject isString ifTrue: [anObject asUrl] ifFalse: [anObject]