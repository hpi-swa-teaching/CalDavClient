initialize-release
initialize

super initialize.
self date: Date today.
self text: 'Show Events'.
eventLabel := (PHLabel new)
				minSize: 300 asPoint.
self color: Color grape.
self size: 100@100.
self attach: (PHPopover new add: eventLabel).
"self when: #clicked send: #refreshButtonByClick to: self."
