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
				baseline: 'MorphicTestingFramework' with: [
					spec repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'];
				package: 'DAV' with: [
					spec repository: 'github://hpi-swa-teaching/DAV-smalltalk/repository'];
				package: 'SCM-Core' with: [spec requires: #('ICal' 'DAV')];
				package: 'SCM-Tests' with: [spec requires: #('MorphicTestingFramework' 'SCM-Core')];
				yourself.
			spec
				group: 'default' with: #('SCM-Core');
				group: 'tests' with: #('SCM-Tests')];
				yourself
