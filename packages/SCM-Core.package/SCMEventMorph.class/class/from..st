initialization
from: aSCMEvent

	^ self new
			event: aSCMEvent;
			loadEvent;
			wrapFlag: true;
			readOnly: true;
			yourself