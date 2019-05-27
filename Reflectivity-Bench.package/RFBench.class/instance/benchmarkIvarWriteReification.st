benchmarking
benchmarkIvarWriteReification
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #write:in:;
				arguments: #(name object).
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	