tests
testbenchmarkIvarWriteNoReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	^self assert: instance benchmarkReadWrite equals: 1