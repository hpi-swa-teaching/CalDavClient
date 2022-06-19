testing
testBuildWith

	self assert: (CALApp selectors anySatisfy: [ :each| each = 'buildWith:'])