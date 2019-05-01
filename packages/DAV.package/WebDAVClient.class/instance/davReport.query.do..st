as yet unclassified
davReport: anUrl query: query do: aBlock

	^ self sendDavRequest: anUrl method: 'REPORT' query: query do: aBlock