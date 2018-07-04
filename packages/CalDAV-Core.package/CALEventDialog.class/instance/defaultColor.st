ui
defaultColor

	[^ self userInterfaceTheme theme get: #color for: #PluggableListMorphPlus] on: Error do: [^ Color white]