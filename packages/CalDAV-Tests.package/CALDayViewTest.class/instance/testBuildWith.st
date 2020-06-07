testing
testBuildWith
	
	
	self assert: (CALDayView selectors anySatisfy: [ :each| each = 'buildWith:']).
	self dayView: (CALDayView new
					app: CALApp new;
					day: Date today).
	self spec: (dayView buildWith: (ToolBuilder default)).
	self assert: (self spec label = 'Day View').
	self assert: (self spec submorphs isEmpty not)