toolbuilding
buildParticipantsText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventParticipants;
		editText: #eventParticipants:;
		indicateUnacceptedChanges: false;
		help: 'Participants';
		readOnly: self isReadOnly; 
		frame: (0.01 @ 0.65 corner: self borderRight @ 0.75)