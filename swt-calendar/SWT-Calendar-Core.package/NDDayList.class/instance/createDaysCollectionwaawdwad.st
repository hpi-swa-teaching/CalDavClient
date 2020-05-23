as yet unclassified
createDaysCollectionwaawdwad

| dayArray |

dayArray := Array new.

1 to: 10 do: [:x | dayArray at: x put: (Date today + x days - 1 days) asString].

Transcript show: dayArray.