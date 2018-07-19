comparing
<= anEvent

	^ (self begin < anEvent begin) or:
		(self begin = anEvent begin and: [ self end > anEvent end]) or:
		(self begin = anEvent begin and: [ self end = anEvent end] and: [self hash < anEvent hash]).
		