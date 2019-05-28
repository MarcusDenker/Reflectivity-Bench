benchmarking - running
benchmarkIvarNoLink
	| instance |
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	