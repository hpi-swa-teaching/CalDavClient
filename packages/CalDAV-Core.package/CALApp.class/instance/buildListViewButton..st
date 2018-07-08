toolbuilder
buildListViewButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openListView;
		label: 'List View';
		enabled: #isListViewActive;
		frame: (0 @ 0.2 corner: 0.1 @ 0.3);
		yourself