tests
testCategoryText
	| tu diag |
	tu := CLTranslationUnit source: 'int f(int i) { return 7; }' allWarnings: true.
	self assert: tu diagnosticSet size equals: 1.
	diag := tu diagnosticAt: 1.
	self assert: diag categoryText equals: 'Semantic Issue'