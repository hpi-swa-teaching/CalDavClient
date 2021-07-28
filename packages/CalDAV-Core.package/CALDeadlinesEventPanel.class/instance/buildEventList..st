toolbuilder
buildEventList: aBuilder

	| content weekColor |

	weekColor := Color white.
	(self weekNumber = (CALDeadlinesWindow weekOfYear)) ifTrue: [weekColor := Color lightBlue].
	content := aBuilder pluggableListSpec new.
	content
		model: self;
		name: 'deadlineList';
		list: #deadlineList;
		color: weekColor;
		frame: (0 @ 0 corner: 1 @ 1).
	^ content