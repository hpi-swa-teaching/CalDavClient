building
buildPasswordInputFieldWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			editText: #updatePassword:;
			frame: (LayoutFrame  new
				leftFraction: 0.5 offset: 0;
				topFraction: 0.3 offset: 0;
				rightFraction: 0.9 offset: 0;
				bottomFraction: 0.4 offset: 0); 
			yourself