subwindows
isDeadlinesViewActive

	[^ (self topView submorphs select: [ :each | each externalName = 'deadlinesGrid']) isEmpty not] on: Error do: [^ false]