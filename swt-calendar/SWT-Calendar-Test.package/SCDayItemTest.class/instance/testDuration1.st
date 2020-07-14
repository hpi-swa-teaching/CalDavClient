as yet unclassified
testDuration1

|dayItem label|

dayItem:= NDDayItem new.
dayItem events: eventCollection1.

label:= ((dayItem submorphs at: 2) submorphs at: 1) text.

self assert: 'Title: testEvent
Start: 6:00 am
Duration: 1d ' equals: label.


