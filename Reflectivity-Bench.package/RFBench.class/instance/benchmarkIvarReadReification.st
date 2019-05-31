benchmarking - running
benchmarkIvarReadReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #read:in:;
				arguments: #(index object).
	(MyBaseObject>>#benchmarkReadWrite) ast variableReadNodes first link: link.
	^[instance benchmarkReadWrite ] bench