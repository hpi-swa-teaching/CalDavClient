baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				project: 'Pheno' with: [
					spec
						className: 'BaselineOfPheno'; 
						repository: 'github://tom95/Pheno:master/src'];
				package: 'DAV' with: [
					spec repository: 'github://hpi-swa-teaching/DAV-smalltalk/repository'];
				package: 'SWT-Calendar-Core' with: [spec requires: #('DAV' 'Pheno')];
				package: 'SWT-Calendar-Tests' with: [spec requires: #('SWT-Calendar-Core')];
				yourself.
			spec
				group: 'default' with: #('SWT-Calendar-Core');
				group: 'tests' with: #('SWT-Calendar-Tests')];
				yourself