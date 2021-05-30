as yet unclassified
buildEventList: aBuilder

	| content |

	content := aBuilder pluggableListSpec new.
	content
		model: self;
		name: 'deadlineList';
		list: #buildDeadlineEvents;
		frame: (0@0 corner:1@1).

		
	
	^ content
			