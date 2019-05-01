accessing
asXML

	| namespacesDictionary xmlWriter |
	
	namespacesDictionary := Dictionary newFrom: (self namespaces collect: [:pair | 
		('xmlns:' , pair first) -> pair second]).
	namespacesDictionary at: #xmlns:D put: #'DAV:'.
	
	xmlWriter := XMLWriter on: (WriteStream on: '').
	
	xmlWriter
		xmlDeclaration: '1.0';
		startElement: 'D:propfind' attributeList: namespacesDictionary;
		endTag;
		startTag: 'D:prop';
		endTag.
	
	self properties do: [:propertyName |
		xmlWriter 
			startTag: propertyName;
			endEmptyTag: propertyName. ].
	
	xmlWriter
		endTag: 'D:prop';
		endTag: 'D:propfind'.
		
	^ xmlWriter flush stream contents