# appveyor-miktex-install

The utility script installs the basic shared MiKTeX on AppVeyor builder and configures proper language support.

The utility provides only basic language support.

It's highly recommended to cache the `c:\miktex` directory between builds.

Binary executables are located at the following location:

```
c:\miktex\miktex\bin
```

so, the best solution would be add it to `PATH`:

```
set "PATH=%PATH%;c:\miktex\miktex\bin"
```

