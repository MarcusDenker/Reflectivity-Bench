benchmarking
benchmarkIvarReadInstead
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #read2:in:;
				arguments: #(name object);
				control: #instead.
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	