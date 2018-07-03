subwindows
isWeekViewActive

	^ (self topView submorphs select: [ :each | each externalName = 'weekPanel']) isEmpty not