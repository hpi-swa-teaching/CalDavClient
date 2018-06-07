baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				project: 'ICal' with: [
					spec 
						className: 'ConfigurationOfICal';
						repository: 'github://codezeilen/ical-smalltalk/repository'];
				package: 'DAV' with: [
					spec repository: 'github://codezeilen/DAV-smalltalk/repository'];
				package: 'CalDAV-Core' with: [spec requires: #('ICal' 'DAV')];
				package: 'CalDAV-Tests' with: [spec requires: #('CalDAV-Core')];
				yourself.
			spec
				group: 'default' with: #('CalDAV-Core');
				group: 'tests' with: #('CalDAV-Tests')];
				yourself