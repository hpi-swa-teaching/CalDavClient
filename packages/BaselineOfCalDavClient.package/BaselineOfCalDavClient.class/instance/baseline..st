baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'CalDavClient-Core';
				package: 'CalDavClient-Tests' with: [spec requires: #('CalDavClient-Core')];
				yourself.
			spec
				group: 'default' with: #('CalDavClient-Core');
				group: 'tests' with: #('CalDavClient-Tests')];
				yourself