building
buildUrlInputFieldWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			editText: #updateUrl:;
			frame: (LayoutFrame  new
				leftFraction: 0.5 offset: 0;
				topFraction: 0.4 offset: 0;
				rightFraction: 0.9 offset: 0;
				bottomFraction: 0.5 offset: 0); 
			yourself