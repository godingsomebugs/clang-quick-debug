# clang-easy-debug
auto-compiling cpp files for quick debugging

I was using termux and vim to code on my phone, but I got tired of creating and deleting bunch of executables just to debug a cpp code. So I've created this little script.

How it works:

Run ```./cc.sh [your cpp file name]```

It compiles the cpp file, spits out a temporary executable file, runs it and deletes it after.

Dependencies
- bash shell
- clang (g++)

I may update this and add more features.
