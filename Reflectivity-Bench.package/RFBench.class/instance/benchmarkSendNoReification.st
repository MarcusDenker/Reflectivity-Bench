benchmarking - running
benchmarkSendNoReification
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkSend) ast sendNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkSend ] bench
	