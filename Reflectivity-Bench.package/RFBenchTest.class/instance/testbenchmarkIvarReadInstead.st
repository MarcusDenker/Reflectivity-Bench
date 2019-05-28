tests
testbenchmarkIvarReadInstead
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #read2:in:;
				arguments: #(index object);
				optionCompileOnLinkInstallation;
				control: #instead.
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	self assert: instance benchmarkReadWrite equals: 1