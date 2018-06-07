queries
fetchEtagOfEventQuery

	^ DAVPropFindQuery
		namespaces: #()
		properties: #('D:getetag')