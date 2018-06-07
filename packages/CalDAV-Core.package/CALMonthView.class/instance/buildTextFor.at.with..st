toolbuilder
buildTextFor: aDay at: aFrame with: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: aDay;
		getText: #dateText;
		frame: aFrame;
		readOnly: true;
		indicateUnacceptedChanges: false;
		yourself