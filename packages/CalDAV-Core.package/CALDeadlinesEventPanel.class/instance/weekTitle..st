as yet unclassified
weekTitle: eventBlocks
	^(Month nameOfMonth:(eventBlocks first event beginMonth)) asString, 
		' Week: ',  
		(((eventBlocks first event beginDay)/7) roundUpTo: 1) asString