benchmarking - installation
benchMethodLinkInstall
	| methods |
	methods := self methodsToInstallOn.
	
	link := MetaLink new
			metaObject: Object new;
			optionCompileOnLinkInstallation;	
			selector: #yourself.

	^[methods do: [:meth | meth ast link: link]] timeToRun.