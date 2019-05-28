running
tearDown
	link ifNotNil: [ link uninstall  ].
	MyBaseObject recompile.
	super tearDown.