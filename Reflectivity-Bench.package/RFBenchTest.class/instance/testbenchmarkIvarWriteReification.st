tests
testbenchmarkIvarWriteReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #write2:in:index:;
				arguments: #(newValue object index).
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	self assert: instance benchmarkReadWrite equals: 1