benchmarking
benchmarkSendNoLink
	|  instance |
	instance := MyBaseObject new.
	^[instance benchmarkSend ] bench
	