toolbuilder
buildEventList: aBuilder

	| content |

	content := aBuilder pluggableListSpec new.
	content
		model: self;
		name: 'deadlineList';
		list: #deadlineList;
		frame: (0 @ 0 corner: 1 @ 1).
	^ content