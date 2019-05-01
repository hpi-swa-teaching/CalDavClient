as yet unclassified
queryFindAll

	^ ((XMLWriter on: (WriteStream on: ''))
		xmlDeclaration: '1.0';
		startElement: 'D:propfind' attributeList: (Dictionary newFrom: {#xmlns:D -> 'DAV:'});
		endTag;
		startTag: 'propname';
		endEmptyTag: 'propname';
		endTag: 'D:propfind';
		flush;
		stream) contents