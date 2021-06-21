layouting
buildDeadlineListOf: eventBlock

	| eventNameList |

	eventNameList := {self weekTitle. ' '} asOrderedCollection.
	eventNameList
		addAll: ((eventBlock
				collect: [:each | each event title])
				select: [:each | '*deadline*' match: each]).
	^ eventNameList