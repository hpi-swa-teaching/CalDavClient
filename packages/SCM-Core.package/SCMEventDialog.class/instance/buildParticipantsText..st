toolbuilder
buildParticipantsText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #participants;
			editText: #participants:;
			indicateUnacceptedChanges: false;
			help: self participantsHelpText;
			readOnly: self isReadOnly; 
			frame: (self borderLeft @ (self lineOffsetOf: 7)
				corner: self borderRight @ ((self lineOffsetOf: 7) + self lineHeight));
			yourself