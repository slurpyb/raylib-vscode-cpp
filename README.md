# raylib-vscode-cpp
Template for building Raylib 4.0 from source with ming32-make and compiling your project

## Prereqs
- Windows 7/10+
- Mingw with mingw32-make, g++, gdb TODO: expand this to properly explain
- Environment variables set so mingw32-build command can be run in this directory

## clone raylib src repo to project root
```bash
$ git clone https://github.com/raysan5/raylib
```

## Enter raylib src directory and build
```bash
$ cd raylib/src mingw32-make PLATFORM=PLATFORM_DESKTOP
```

## Create header and library folders for your project src
```bash
$ mkdir ../../src/include/raylib -p && mkdir ../../src/lib
```

## Copy headers and library files to your src directory
```bash
$ cp *.h ../../src/include/raylib && cp *.a ../../src/lib
```

## Configure .vscode files
- Ensure compilerPath in .vscode/c_cpp_properties.json points to your g++ installation ie
```json
    "compilerPath": "C:/msys64/mingw64/bin/g++.exe"
```

- Ensure paths are also correct for debugger (gdb) ie
```json
    "miDebuggerPath": "C:/msys64/mingw64/bin/gdb.exe",
```

# Create build folder in this repos root
```bash
$ mkdir build
```

## Compile main.cpp to test
With main.cpp selected/active in vscode, run debug task or "Start Debugging" from run menu.

## Optional: remove raylib header and library files from .gitignore
