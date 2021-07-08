as yet unclassified
setUp
	
	self quickView: CALQuickView new.
	self quickView app: CALApp new prepareCalendars.
	self quickView date: self firstOfMarch2018