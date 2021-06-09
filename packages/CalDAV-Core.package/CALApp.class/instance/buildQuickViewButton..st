toolbuilder
buildQuickViewButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openQuickView;
		label: 'QuickView';
		enabled: true;
		frame: (0 @ 0.3 corner: 0.1 @ 0.4);
		yourself