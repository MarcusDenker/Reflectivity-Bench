benchmarking - running
benchmarkIvarReadReification
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #read:in:;
				arguments: #(name object).
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	