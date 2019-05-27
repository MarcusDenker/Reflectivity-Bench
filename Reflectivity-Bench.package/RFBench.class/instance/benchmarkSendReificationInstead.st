benchmarking
benchmarkSendReificationInstead
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #send2:to:withArgs:;
				arguments: #(selector object arguments);
				control: #instead.
	(MyBaseObject>>#benchmarkSend) ast sendNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkSend ] bench
	