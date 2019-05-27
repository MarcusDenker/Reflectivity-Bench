benchmarking
benchmarkIvarWriteInstead
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #write2:in:;
				arguments: #(name object);
				control: #instead.
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	