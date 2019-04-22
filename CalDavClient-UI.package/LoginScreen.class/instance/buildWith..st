building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'ProCalendar';
		extent: 600@500;
		children: {self buildSignInButtonWith: aBuilder.
			self buildUsernameInputFieldWith: aBuilder.
			self buildPasswordInputFieldWith: aBuilder.
			self buildUrlInputFieldWith: aBuilder.
			"self buildTestFieldWith: aBuilder."
				}
		yourself)