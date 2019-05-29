Simple benchmark for Metalinks, both installlation and runtime.

installation: recompile Morph hierachy, intall links with recompile, install links

running: I benchmark three cases:

- Send
- Ivar write
- Ivar read

Then these three for 4 cases: 

1. Reflectivity not used
2. call a 0-arg empty method on the meta (no reifications)
3. reify all infos needed if you want to do the operation
	send: object, selector, args
	ivar: name and object
4. use an instead link and do the operation reflectively (this will of course be slow)
	- instVarNamed: / instvarNamed:put:
	- perform:withArgs:

I use the #bench method to do the benchmark, it runs the code for 5 seconds and records how often it is called.

bench := RFBench new.

"Ivar Read"
bench benchmarkIvarNoLink.
bench benchmarkIvarReadNoReification 
bench benchmarkIvarReadReification 
bench benchmarkIvarReadInstead

"Ivar Write:"
bench benchmarkIvarNoLink.
bench benchmarkIvarWriteNoReification 
bench benchmarkIvarWriteReification 
bench benchmarkIvarWriteInstead

"message send"
bench benchmarkSendNoLink
bench benchmarkSendNoReification 
bench benchmarkSendReification 
bench benchmarkSendInstead


in between rums, always call:

bench cleanUp.