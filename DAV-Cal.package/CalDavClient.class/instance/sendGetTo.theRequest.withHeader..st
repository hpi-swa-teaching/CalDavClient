requests
sendGetTo: anUrl theRequest: query withHeader: headerConfigs

	| sendRequest |
	sendRequest := [
		| response |
		response := self webDavClient new davGet: anUrl query: query do: [:request |
			headerConfigs do: [:config | request headerAt: config key put: config value].
			self addAuthorizationInformation: request].
		^ self handleResponse: response.].
	
	[sendRequest on: CalDavRetryException do: sendRequest]
		on: CalDavRetryException do: [Exception signal].