tests
testbenchmarkIvarReadReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #read:in:;
				arguments: #(name object).
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	self assert: instance benchmarkReadWrite equals: 1