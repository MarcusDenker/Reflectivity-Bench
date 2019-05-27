Base code that is benchmarked.

We have very simple methods for ivar accessa and message sends.

The ivar method implements both read and write as else the read would be compiled to a primitive and thus not
show the slowdown of ivar access in normal code.

the send exampke just calls a two-arg empty method.