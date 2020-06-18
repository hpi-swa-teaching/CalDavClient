as yet unclassified
initialize

	| eventLabel |

	super initialize.

	self color: Color grape.

	self label text: 'New Appointment...'.
	self extent: 40@80.
	self size: 100@100.

	"eventLabel := (PHLabel new) minSize: 300 asPoint.
	self attach: ((PHPopover new) add: eventLabel)."

	self when: #clicked send: #openAppointmentDialog to: self.
