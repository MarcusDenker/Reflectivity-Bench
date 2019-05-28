benchmarking - running
benchmarkIvarReadInstead
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #read2:in:;
				arguments: #(name object);
				optionCompileOnLinkInstallation;
				control: #instead.
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	