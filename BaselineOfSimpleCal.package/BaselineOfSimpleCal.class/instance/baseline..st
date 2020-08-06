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
				package: 'swt-calendar/SWT-Calendar-Core' with: [spec requires: #('DAV' 'Pheno')];
				package: 'swt-calendar/SWT-Calendar-Tests' with: [spec requires: #('SWT-Calendar-Core')];
				yourself.
			spec
				group: 'default' with: #('swt-calendar/SWT-Calendar-Core');
				group: 'tests' with: #('swt-calendar/SWT-Calendar-Tests')];
				yourself