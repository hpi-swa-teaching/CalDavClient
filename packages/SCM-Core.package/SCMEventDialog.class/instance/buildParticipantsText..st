toolbuilding
buildParticipantsText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #participants;
		editText: #participants:;
		indicateUnacceptedChanges: false;
		help: 'Participants';
		readOnly: self isReadOnly; 
		frame: (0.01 @ (self lineOffsetOf: 6) corner: self borderRight @ ((self lineOffsetOf: 6) + self lineHeight))