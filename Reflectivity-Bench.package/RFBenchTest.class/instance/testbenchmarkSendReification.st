tests
testbenchmarkSendReification
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #send:to:withArgs:;
				arguments: #(selector object arguments).
	(MyBaseObject>>#benchmarkSend) ast sendNodes first link: link.
	self assert: instance benchmarkSend equals: instance