accessing
switchView

	| calendars |
	calendars := self fetchCalendars.
	(self currentView class = SCMAgendaView)  "good To Do: let view morph have method isAgendaView"
		ifTrue: [
				self currentView abandon.
				self currentView: (SCMWeekViewFactory new createView: calendars).
				self addMorph: self currentView]
		ifFalse: [
				self currentView abandon.
				self currentView: (SCMAgendaViewFactory new createView: calendars).
				self addMorph: self currentView].
	^ self currentView