toolbuilder
buildParticipantsText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #participants;
		editText: #participants:;
		indicateUnacceptedChanges: false;
		help: 'Participants';
		readOnly: self isReadOnly; 
		frame: (self borderLeft @ (self lineOffsetOf: 7) corner: self borderRight @ ((self lineOffsetOf: 7) + self lineHeight))