benchmarking - installation
fillCache
	| methods |
	methods := self methodsToInstallOn.
	"fill the AST cache"
	methods do: #ast.