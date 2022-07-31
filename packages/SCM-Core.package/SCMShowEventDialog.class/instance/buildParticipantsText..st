toolbuilder
buildParticipantsText: aBuilder

	^ (super buildParticipantsText: aBuilder) frame: (self borderLeft @ (self lineOffsetOf: 6)
				corner: self borderRight @ ((self lineOffsetOf: 6) + self lineHeight));
				yourself