initialize-release
openWith: aCALApp

	| deadlineWindow deadlineWindowMorph |
	
	deadlineWindow := CALDeadlinesWindow new app: aCALApp.
	deadlineWindowMorph := ToolBuilder default open: deadlineWindow.
	deadlineWindowMorph position: (deadlineWindowMorph world right - deadlineWindowMorph width) @ 0.
	(deadlineWindowMorph submorphs detect: [:each | each nameOfObjectRepresented = 'deadlinesPanel'])
		scrollBy: -1 * (0 @ (self weekOfYear + 1 * 80)).
	^ deadlineWindowMorph