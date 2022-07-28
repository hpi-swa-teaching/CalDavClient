toolbuilding
buildLocationText: aBuilder

	^ (super buildLocationText: aBuilder) frame: (self borderLeft @ (self lineOffsetOf: 5)
				corner: self borderRight @ ((self lineOffsetOf: 5) + self lineHeight));
				yourself