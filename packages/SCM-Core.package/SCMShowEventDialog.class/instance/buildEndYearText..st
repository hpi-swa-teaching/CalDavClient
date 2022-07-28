toolbuilding
buildEndYearText: aBuilder

	^ (super buildBeginYearText: aBuilder) frame: (self borderLeft @ (self lineOffsetOf: 4) 
				corner: 0.3 @ ((self lineOffsetOf: 4) + self lineHeight));
				yourself