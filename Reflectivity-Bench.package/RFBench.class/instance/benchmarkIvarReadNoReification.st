benchmarking - running
benchmarkIvarReadNoReification
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	