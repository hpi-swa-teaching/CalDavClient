accessing
saveToDisk

	"todo: move to manager"

	(FileStream forceNewFileNamed: self fullName)
		nextPutAll: self eventsData;
		close.