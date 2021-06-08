initialize-release
openWith: aCALApp

	| deadlineWindow |
	
	deadlineWindow := CALDeadlinesWindow new.
	deadlineWindow app: aCALApp.
	^ ToolBuilder default open: deadlineWindow