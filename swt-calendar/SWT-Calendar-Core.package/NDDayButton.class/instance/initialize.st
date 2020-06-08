initialize-release
initialize

super initialize.
self color: Color grape.
self size: 100@100.
"self attach: (PHPopover new add: ((PHLabel text: 'Moop')
				minSize: 300 asPoint))."
self when: #clicked send: #openDialog to: self.