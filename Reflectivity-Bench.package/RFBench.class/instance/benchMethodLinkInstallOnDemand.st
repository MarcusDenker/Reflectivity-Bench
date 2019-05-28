benchmarking - installation
benchMethodLinkInstallOnDemand
	| methods |
	methods := self methodsToInstallOn.
	
	link := MetaLink new
			metaObject: Object new;
			selector: #yourself.

	^[methods do: [:meth | meth ast link: link]] timeToRun.