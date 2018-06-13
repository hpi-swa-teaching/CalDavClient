as yet unclassified
buildTimeLabelFor: aNumber with: aBuilder

	| yBottom yTop |
	
	yTop := self yPositionFor: aNumber.
	yBottom := self yPositionFor: aNumber + 1.
	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		help: aNumber asString;
		frame: (0 @ yTop corner: self timeLabelWidth @ yBottom)