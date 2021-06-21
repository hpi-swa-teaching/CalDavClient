initialize-release
openWith: aCALApp

	| deadlineWindow deadlineWindowMorph |
	
	deadlineWindow := CALDeadlinesWindow new.
	deadlineWindow app: aCALApp.
	deadlineWindowMorph := ToolBuilder default open: deadlineWindow.
	deadlineWindowMorph position: (deadlineWindowMorph world right - deadlineWindowMorph width) @ 0.
	^ deadlineWindowMorph