baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				
				package: 'CalDAV-Core';
				package: 'CalDAV-Tests' with: [spec requires: #('CalDAV-Core')];
				yourself.
			spec
				group: 'default' with: #('CalDAV-Core');
				group: 'tests' with: #('CalDAV-Tests')];
				yourself