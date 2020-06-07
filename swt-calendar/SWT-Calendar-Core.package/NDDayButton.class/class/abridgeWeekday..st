as yet unclassified
abridgeWeekday: aDate
	"returns first three chars of weekday-string"
|string|

string := String new: 3.
(1 to: 3) do: [:i | string at:i put: (aDate weekday at: i)].
^string