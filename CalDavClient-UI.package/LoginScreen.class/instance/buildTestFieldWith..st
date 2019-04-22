building
buildTestFieldWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			frame: (LayoutFrame  new
				leftFraction: 0 offset: 0;
				topFraction: 0.2 offset: 0;
				rightFraction: 0.4 offset: 0;
				bottomFraction: 0.3 offset: 0); 
			yourself