benchmarking
benchmarkIvarReadNoReification
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	