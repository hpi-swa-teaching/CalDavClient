as yet unclassified
buildListAt: aRow and: aColumn with: aBuilder

	^ aBuilder pluggableListSpec new
		model: (self days at: (aRow-1)*7 + aColumn);
		list: #eventNames;
		frame: (self listFrameWith: aRow and: aColumn);
		yourself
	
	