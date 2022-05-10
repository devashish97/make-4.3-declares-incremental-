// This make program declares if any of the objects to be made are already present.
// This is useful to find out if a compilation is from scratch, or on top of a previous/incomplete compilation.
// It also helps to determine the runtime difference between a full compilation and an incremental compilation.

// HOW TO INSTALL

// Run ./configure, and then make.

// Example Makefile:
Makefile

// Result for a fresh compilation:
fullbuild.log

// Result for re-compilation:
rebuild.log

// Comments:
All ".c" files are empty, thus target "edit" in the example Makefile will always give error and not be made.
