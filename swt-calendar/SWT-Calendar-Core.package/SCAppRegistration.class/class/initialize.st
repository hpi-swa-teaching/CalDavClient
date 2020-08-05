running
initialize
	"registers the app to the app menu of sqeak"
	TheWorldMenu registerOpenCommand: {'SimpleCal'. {self. #open}}