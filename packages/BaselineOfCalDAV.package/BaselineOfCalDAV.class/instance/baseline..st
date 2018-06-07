baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'ICal-Core-Model';
				package: 'DAV-Cal';
				package: 'CalDAV-Core'; with: [spec requires: #('DAV-Cal')];
				package: 'CalDAV-Tests' with: [spec requires: #('CalDAV-Core')];
				yourself.
			spec
				group: 'default' with: #('CalDAV-Core');
				group: 'tests' with: #('CalDAV-Tests')];
				yourself