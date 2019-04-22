building
buildSignInButtonWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
			model: self;
			label: 'Sign in';
			"action: #addCurrentTask;"
			color: Color green;
			frame: (LayoutFrame  new
				leftFraction: 0.35 offset: 0;
				topFraction: 0.75 offset: 0;
				rightFraction: 0.65 offset: 0;
				bottomFraction: 0.9 offset: 0); 
			yourself