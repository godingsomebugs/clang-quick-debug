# clang-quick-debug
quick-debug for c, cc, cpp and cxx files.

I was using termux and vim to code on my phone, but I got tired of creating and deleting bunch of executables just to debug a cpp code. So I've created this little script.

How it works:

Throw the "cc.sh" script into your project's directory.

Run `./cc.sh [your file name]`

You can use `./cc.sh .` too.
It targets "main.cpp" file in the directory (You can modify it by changing the 'default' variable).

It compiles the c/c++ file, spits out a temporary executable file, runs it and deletes it afterwards.

Dependencies
- bash shell
- clang (g++)

I may update this and add more features.
