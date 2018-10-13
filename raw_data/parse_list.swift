#!/usr/bin/swift

import Foundation

// parse arguments

var output_file = "wars.json"

if CommandLine.argc < 2 {
	print("No parse file provided.")
	exit(1)
}

// I'm not getting too damn fancy with this, read the file from the same path as the script.
// also run the script from the path its in.  You should only have to do this once.
// then save the crap outta it.  Frankly, why am I even passing in the filename...
let inputInputFile = CommandLine.argv.last!
do {
	let warsInput = try String()
}
