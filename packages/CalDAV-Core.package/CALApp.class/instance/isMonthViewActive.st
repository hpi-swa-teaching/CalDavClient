subwindows
isMonthViewActive

	[^ (self topView submorphs
		select: [:each | each externalName = 'monthPanel']) isEmpty not]
		on: Error
		do: [^ false]