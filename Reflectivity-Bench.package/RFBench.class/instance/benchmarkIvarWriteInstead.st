benchmarking - running
benchmarkIvarWriteInstead
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #write2:in:index:;
				arguments: #(newValue object index);
				control: #instead.
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	^[instance benchmarkReadWrite ] bench
	