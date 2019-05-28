benchmarking - running
benchmarkIvarWriteReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #write2:in:index:;
				arguments: #(newValue object index).
	(MyBaseObject>>#benchmarkReadWrite) ast assignmentNodes first link: link.
	^[instance benchmarkReadWrite ] bench
	