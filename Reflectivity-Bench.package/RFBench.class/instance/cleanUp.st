cleanup
cleanUp
	link ifNotNil: [  :alink | alink uninstall].
	MyBaseObject recompile.
	Smalltalk garbageCollect.