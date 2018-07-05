as yet unclassified
buildTimeLabelFor: aNumber with: aBuilder

	| yBottom yTop hourText |
	
	aNumber = 0 
		ifTrue:[hourText := 'whole day'] 
		ifFalse: [hourText := (aNumber -1) asString].
	yTop := self yPositionFor: aNumber and: 0.
	yBottom := self yPositionFor: aNumber + 1 and: 0.
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: false;
		label: hourText;
		frame: (0 @ yTop corner: 1 @ yBottom);
		yourself