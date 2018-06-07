requests
sendReportTo: anUrl theRequest: queryString withHeader: headerConfigs

	| sendRequest |
	sendRequest := [
		| response |
		self halt.
		response := self webDavClient new davReport: anUrl query: queryString do: [:request |
			headerConfigs do: [:config | request headerAt: config key put: config value].
			self addAuthorizationInformation: request].
		^ self handleResponse: response.].
	
	[sendRequest on: CalDavRetryException do: sendRequest]
		on: CalDavRetryException do: [self halt].