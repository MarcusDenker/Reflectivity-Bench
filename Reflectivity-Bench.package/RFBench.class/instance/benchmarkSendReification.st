benchmarking
benchmarkSendReification
	|  instance |
	link := MetaLink new
				metaObject: MyMetaObject new;
				selector: #send:to:withArgs:;
				arguments: #(selector object arguments).
	(MyBaseObject>>#benchmarkSend) ast sendNodes first link: link.
	instance := MyBaseObject new.
	^[instance benchmarkSend ] bench
	