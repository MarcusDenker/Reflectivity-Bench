tests
testbenchmarkSendReificationInstead
	link := MetaLink new
				metaObject: MyMetaObject new;
				optionCompileOnLinkInstallation;
				selector: #send2:to:withArgs:;
				arguments: #(selector object arguments);
				control: #instead.
	(MyBaseObject>>#benchmarkSend) ast sendNodes first link: link.
	self assert: instance benchmarkSend equals: instance