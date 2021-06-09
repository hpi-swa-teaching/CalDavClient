toolbuilder
buildAppButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openApp;
		label: 'App';
		enabled: true;
		frame: (0.5 @ 0 corner: 1 @ 0.1);
		yourself

	