tests
testbenchmarkSendNoReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #yourSelf.
	(MyBaseObject>>#benchmarkSend) ast sendNodes first link: link.
	self assert: instance benchmarkSend equals: instance