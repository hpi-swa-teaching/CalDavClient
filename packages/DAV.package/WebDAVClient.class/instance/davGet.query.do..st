as yet unclassified
davGet: anUrl query: query do: aBlock

	^ self sendDavRequest: anUrl method: 'GET' query: query do: aBlock