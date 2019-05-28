benchmarking - installation
benchMethodRecompile
	| methods |
	methods := self methodsToInstallOn.
	 ^[methods do: #recompile] timeToRun.