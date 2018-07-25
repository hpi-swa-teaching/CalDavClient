toolbuilding
buildParticipantsText: aBuilder

	| height |
	
	height := (self lineHeight * 6) + (self spacing * 6).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventParticipants;
		editText: #eventParticipants:;
		indicateUnacceptedChanges: false;
		help: 'Participants';
		readOnly: self isReadOnly; 
		frame: (0.01 @ height corner: self borderRight @ (height +self lineHeight))