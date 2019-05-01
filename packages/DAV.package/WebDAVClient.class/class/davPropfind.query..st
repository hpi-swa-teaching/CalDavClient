methods
davPropfind: url query: query

	^ self httpDo: [:client | client davPropfind: url query: query  ]