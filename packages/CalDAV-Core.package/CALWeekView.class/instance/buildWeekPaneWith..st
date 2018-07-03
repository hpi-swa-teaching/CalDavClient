as yet unclassified
buildWeekPaneWith: aBuilder

	^ (CALWeekPanel new
				parent: self parent;
				day: self day;
				buildSpec: aBuilder)
				frame: (0 @ 0 corner: 1 @ 1)