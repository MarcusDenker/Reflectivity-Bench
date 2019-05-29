benchmarking
benchmarkReadWrite
	"we do both read and write in one method as it gives better approximation of real world slowdown:
	a single ^ivar would be compiled as a specially optimzied accessor primitive, ot a byteocde"
	ivar := 1.
	^ivar