baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Pheno' with: [
					spec repository: 'github://tom95/Pheno/master/src'];
				package: 'DAV' with: [
					spec repository: 'github://hpi-swa-teaching/DAV-smalltalk/repository'];
				package: 'SWT-Calendar-Core' with: [spec 
					repository: 'github://hpi-swa-teaching/CalDavClient:development/swt-calendar';
					requires: #('Pheno' 'DAV')];
				"package: 'SWT-Calendar-Tests' with: [spec 
					repository: 'github://hpi-swa-teaching/CalDavClient:development/swt-calendar';
					requires: #('SWT-Calendar-Core')];"
				yourself.
			spec
				group: 'default' with: #('SWT-Calendar-Core')];
				"group: 'tests' with: #('SWT-Calendar-Tests')];"
				yourself