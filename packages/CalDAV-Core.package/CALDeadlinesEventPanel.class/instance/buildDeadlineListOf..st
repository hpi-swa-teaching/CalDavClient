layouting
buildDeadlineListOf: anEventBlock

	| eventNameList |

	eventNameList := {self weekTitle. ' '} asOrderedCollection.
	eventNameList
		addAll: ((anEventBlock
				collect: [:each | each event title])
				select: [:each | '*deadline*' match: each]).
	^ eventNameList