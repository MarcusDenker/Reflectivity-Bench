benchmarking - running
benchmarkIvarWriteNoReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	^[instance benchmarkReadWrite ] bench
	