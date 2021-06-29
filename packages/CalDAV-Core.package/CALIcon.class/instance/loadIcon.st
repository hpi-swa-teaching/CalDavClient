accessing
loadIcon

	self image: ((GMImageLoader new resourceFromDrive:  FileDirectory slash, 'Applications', FileDirectory slash, 'SWT-2021.app', FileDirectory slash , 'Contents', FileDirectory slash , 'Resources' , FileDirectory slash , 'CalDAV' , FileDirectory slash, 'icons', FileDirectory slash, self name, '.png') scaledToSize: self size).