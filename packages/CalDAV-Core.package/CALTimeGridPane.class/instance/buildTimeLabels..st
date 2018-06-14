as yet unclassified
buildTimeLabels: aBuilder

	^ (0 to: 23) collect: [ :each | self buildTimeLabelFor: each with: aBuilder ]