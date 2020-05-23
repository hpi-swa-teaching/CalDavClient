as yet unclassified
createDaysCollection: aNumber

| dayCollection |

dayCollection := Collection new.

1 to: aNumber do: [:x | dayCollection add: (Date today + x days - 1 days) asString at: x].

Transcript show: dayCollection.