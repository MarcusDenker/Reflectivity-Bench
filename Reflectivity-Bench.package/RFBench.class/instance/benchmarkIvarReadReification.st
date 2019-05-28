benchmarking - running
benchmarkIvarReadReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #read2:in:;
				arguments: #(index object).
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	^[instance benchmarkReadWrite ] bench