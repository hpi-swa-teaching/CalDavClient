building
buildUsernameInputFieldWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			editText: #updateUsername:;
			frame: (LayoutFrame  new
				leftFraction: 0.5 offset: 0;
				topFraction: 0.2 offset: 0;
				rightFraction: 0.9 offset: 0;
				bottomFraction: 0.3 offset: 0); 
			yourself