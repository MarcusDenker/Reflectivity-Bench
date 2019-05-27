benchmarking
benchmarkIvarReadReification
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #read:in:;
				arguments: #(name object).
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	