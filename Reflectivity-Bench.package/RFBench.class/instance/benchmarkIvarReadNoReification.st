benchmarking - running
benchmarkIvarReadNoReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	^[instance benchmarkReadWrite ] bench
	