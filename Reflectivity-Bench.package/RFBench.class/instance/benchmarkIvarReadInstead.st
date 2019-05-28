benchmarking - running
benchmarkIvarReadInstead
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #read2:in:;
				arguments: #(index object);
				optionCompileOnLinkInstallation;
				control: #instead.
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	^[instance benchmarkReadWrite ] bench
	