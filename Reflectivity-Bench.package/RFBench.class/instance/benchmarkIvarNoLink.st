benchmarking
benchmarkIvarNoLink
	| instance |
	instance := MyBaseObject new.
	^[instance benchmarkReadWrite ] bench
	