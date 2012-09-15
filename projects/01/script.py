
def foo(a, b, sel, v):
	for i in range(16):
		print("Mux(a={3}[{0}], b={4}[{0}], sel=sel[{1}], out={2}{0});".format(i, sel, v, a,b))
	print("")
foo("a", "b", "2", "u")
foo("c", "d", "2", "v")
foo("e", "f", "2", "w")
foo("g", "h", "2", "x")
print("")
foo("u", "v", "3", "y")
foo("w", "x", "1", "z")
print("")
foo("y", "z", "0", "out[")
