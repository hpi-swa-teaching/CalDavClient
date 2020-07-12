as yet unclassified
setUp

|mockEvent1 mockEvent2 mockEvent3|

mockEvent1:= NDMockEvent new.
mockEvent1 createMockEventWithStart: (DateAndTime year: 2020 month: 7 day: 20 hour: 6 minute: 0) End: (DateAndTime year: 2020 month: 7 day: 21 hour: 6 minute: 0).
eventCollection1:= OrderedCollection new.
eventCollection1 add: mockEvent1.

mockEvent2:= NDMockEvent new.
mockEvent2 createMockEventWithStart: (DateAndTime year: 2020 month: 7 day: 20 hour: 6 minute: 0) End: (DateAndTime year: 2020 month: 7 day: 21 hour: 8 minute: 0).
eventCollection2:= OrderedCollection new.
eventCollection2 add: mockEvent2.


mockEvent3:= NDMockEvent new.
mockEvent3 createMockEventWithStart: (DateAndTime year: 2020 month: 7 day: 20 hour: 6 minute: 0) End: (DateAndTime year: 2020 month: 7 day: 21 hour: 6 minute: 30).
eventCollection3:= OrderedCollection new.
eventCollection3 add: mockEvent3.

