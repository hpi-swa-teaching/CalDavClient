requests
parseXML: string

	^ XMLDOMParser parseDocumentFrom: string readStream.
	