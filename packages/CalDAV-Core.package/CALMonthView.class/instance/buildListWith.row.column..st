as yet unclassified
buildListWith: aBuilder row: aRow column: aColumn
	
	| day |
	day := CALDay new.
	day day: aRow * 7 + aColumn -7.
	 ^ aBuilder pluggableListSpec new
				model: day;
				list: #eventNames;
				frame: (self listFrameWith: aRow and: aColumn);
				yourself