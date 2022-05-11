running
setUp
	
	| morph |
	
	self quickView: CALQuickView new.
	self quickView app: CALApp new prepareCalendars.
	self quickView date: self firstOfMarch2018.
	morph := Morph new openInWorld.
	self world: morph world.
	morph abandon