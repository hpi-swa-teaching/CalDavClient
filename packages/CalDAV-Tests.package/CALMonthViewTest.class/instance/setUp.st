as yet unclassified
setUp
	
	monthView := CALMonthPane new.
	1 to: 42 do: [:index | monthView days add: (CALDay new)].