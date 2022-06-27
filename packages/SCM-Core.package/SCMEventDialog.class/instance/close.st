toolbuilding
close

	self windows do: [:window | window closeBoxHit].
	self topView ifNotNil: #delete.