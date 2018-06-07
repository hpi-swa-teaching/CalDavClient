as yet unclassified
buildTextAt: aRow and: aColumn with: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: (self days at: (aRow-1)*7 + aColumn);
		getText: #dateText;
		frame: (self textFrameWith: aRow and: aColumn);
		readOnly: true;
		indicateUnacceptedChanges: false;
		yourself