testing
testButtonsExistence

	| button |

	button := ((self deadlinesView buildAppButtonWith: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'calendar') and: [button actionSelector = #openApp]).
	button := ((self deadlinesView buildQuickViewButtonWith: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'list') and: [button actionSelector = #openQuickView])