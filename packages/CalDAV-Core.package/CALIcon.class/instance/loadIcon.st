accessing
loadIcon
	
	| delimiter |
	
	delimiter := FileDirectory pathNameDelimiter.
	self image: ((GMImageLoader new 
					resourceFromDrive: 'CalDAV' , delimiter, 'icons', delimiter, self name, '.png') 
			scaledToSize: self size).