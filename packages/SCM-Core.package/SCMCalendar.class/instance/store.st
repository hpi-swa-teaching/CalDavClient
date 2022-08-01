actions
store

	(FileStream forceNewFileNamed: self fullTitle)
		nextPutAll: (STON toString: self compressedCopy);
		close