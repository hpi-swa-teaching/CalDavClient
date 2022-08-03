initialization
createWith: aSCMEvent

	^ self new
			event: aSCMEvent;
			configureLayout;
			loadEvent;
			wrapFlag: true;
			readOnly: true;
			yourself