tests
testbenchmarkIvarReadNoReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	self assert: instance benchmarkReadWrite equals: 1