#!/usr/bin/awk

BEGIN {
	print "/* AUTOGENERATED FILE, DO NOT EDIT, see src/debugflags.def instead */"
}

/^\/\/\/ / {
	comment=substr($0, 5)
}

/^unsigned / {
	print "cout << \"\\t" $2 "\\t:\\t" comment "\\n\";"
}