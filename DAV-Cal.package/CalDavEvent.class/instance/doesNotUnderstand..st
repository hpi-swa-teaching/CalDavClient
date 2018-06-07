accessing
doesNotUnderstand: aMessage

	| key |
	key := (self serverData respondsTo: aMessage selector) ifFalse: 
			[self serverData ifNil: [^ 'uninitialized event'].
			 super doesNotUnderstand: aMessage].
	
	aMessage selector numArgs = 1 ifTrue: ["We assume this is a setter and " self setDirty].
	
	^ aMessage sendTo: self serverData 