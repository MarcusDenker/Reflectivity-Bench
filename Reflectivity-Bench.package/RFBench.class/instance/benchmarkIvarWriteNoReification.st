benchmarking
benchmarkIvarWriteNoReification
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	