toolbuilder
buildQuickViewButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openQuickView;
		label: 'QuickView';
		enabled: true;
		frame: (0 @ 0 corner: 0.5 @ 0.1);
		yourself

	