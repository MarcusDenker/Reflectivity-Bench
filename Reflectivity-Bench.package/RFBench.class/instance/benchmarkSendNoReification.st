benchmarking - running
benchmarkSendNoReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkSend) ast sendNodes first link: link.
	^[instance benchmarkSend ] bench
	