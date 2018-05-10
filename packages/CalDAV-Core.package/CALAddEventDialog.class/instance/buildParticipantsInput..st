toolbuilding
buildParticipantsInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventParticipants;
		setText: #eventParticipants:;
		help: 'Participants';
		frame: (0.01@0.65 corner: self borderRight@0.75)