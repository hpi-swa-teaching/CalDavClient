baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [
            spec
                package: 'DAV' with: [
                    spec repository: 'github://hpi-swa-teaching/DAV-smalltalk/repository'];
                package: 'Pheno' with: [
                    spec repository: 'github://tom95/Pheno:master/src'];
                package: 'SWT-Calendar-Core' with: [spec requires: #('DAV' 'Pheno')];
                package: 'SWT-Calendar-Tests' with: [spec requires: #('DAV' 'Pheno')];
                yourself.
            spec
                group: 'default' with: #('SWT-Calendar-Core');
                group: 'tests' with: #('SWT-Calendar-Tests')];
                yourself