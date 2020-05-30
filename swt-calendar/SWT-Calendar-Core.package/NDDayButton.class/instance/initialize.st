initialize-release
initialize

super initialize.
self color: Color green.
self size: 100@100.
self when: #clicked send: #openDialog to: self.