accessing
store

	(FileStream forceNewFileNamed: self fullTitle)
		nextPutAll: (STON toString: self compressed);
		close

	