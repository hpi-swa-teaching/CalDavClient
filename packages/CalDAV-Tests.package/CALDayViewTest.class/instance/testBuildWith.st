as yet unclassified
testBuildWith
	
	
	self assert: (CALDayView selectors anySatisfy: [ :each| each = 'buildWith:']).
	dayView := CALDayView new
					parent: CALApp new;
					day: Date today.
	spec := dayView buildWith: (ToolBuilderMock default).
	self assert: (spec label = 'Day View').
	self assert: (spec submorphs isEmpty not)