benchmarking - running
benchmarkIvarWriteReification
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	