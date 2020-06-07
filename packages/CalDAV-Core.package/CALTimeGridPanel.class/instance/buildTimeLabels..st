toolbuilder
buildTimeLabels: aBuilder

	^ (0 to: 24) collect: [ :each | self buildTimeLabelFor: each with: aBuilder ]