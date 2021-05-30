as yet unclassified
openWith: anApp

	| app |
	
	app := CALDeadlinesWindow new.
	app app: anApp.
	^ ToolBuilder default open: app