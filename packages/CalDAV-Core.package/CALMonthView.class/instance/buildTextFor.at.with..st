as yet unclassified
buildTextFor: aDay at: aFrame with: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: aDay;
		getText: #name;
		frame: aFrame;
		readOnly: true;
		indicateUnacceptedChanges: false;
		yourself