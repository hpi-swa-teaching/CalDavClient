toolbuilder
buildBeginYearText: aBuilder

	^ (super buildBeginYearText: aBuilder) frame: (self borderLeft @ (self lineOffsetOf: 3) 
			corner: 0.3 @ ((self lineOffsetOf: 3) + self lineHeight));
			yourself