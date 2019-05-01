as yet unclassified
davPropfind: urlString properties: propfindQuery

	^ self davPropfind: urlString properties: propfindQuery do: [:request |
		request headerAt: 'Content-Type' put: 'application/xml'.
		request headerAt: 'Prefer' put: 'return-minimal'.
		request headerAt: 'Depth' put: '1'.]