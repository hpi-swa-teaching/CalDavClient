subwindows
isDeadlinesViewActive

	[^ (self topView submorphs select: [ :each | each externalName = 'deadlinesPanel']) isEmpty not] on: Error do: [^ false]