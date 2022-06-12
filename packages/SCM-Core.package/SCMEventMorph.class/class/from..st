as yet unclassified
from: aSCMEvent

	^ self new
			event: aSCMEvent;
			loadEvent;
			wrapFlag: true;
			readOnly: true;
			yourself