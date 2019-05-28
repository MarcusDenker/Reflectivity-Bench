benchmarking - running
benchmarkIvarWriteInstead
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #write2:offset:to:;
				arguments: #(name object);
				control: #instead.
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	