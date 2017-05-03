# I am a bug

## how to reproduce me on cabal new-build
1. Make sure `acme-missiles` is not installed globally or in `~/.cabal` or `~/.ghc`
2.

```
$ cabal new-build
Resolving dependencies...
In order, the following will be built (use -v for more details):
setup-missiles-0.0.1
[1 of 1] Compiling Main             ( /home/arian/Documents/UU/MCCO/projects/setup-missiles/dist-newstyle/build/setup-missiles-0.0.1/setup/setup.hs, /home/arian/Documents/UU/MCCO/projects/setup-missiles/dist-newstyle/build/setup-missiles-0.0.1/setup/Main.o )
Linking /home/arian/Documents/UU/MCCO/projects/setup-missiles/dist-newstyle/build/setup-missiles-0.0.1/setup/setup ...
Nuclear launch detected.
Configuring setup-missiles-0.0.1...
Nuclear launch detected.
Preprocessing executable 'setup-missiles' for setup-missiles-0.0.1...
[1 of 1] Compiling Main             ( src/Main.hs, /home/arian/Documents/UU/MCCO/projects/setup-missiles/dist-newstyle/build/setup-missiles-0.0.1/build/setup-missiles/setup-missiles-tmp/Main.o )
Linking /home/arian/Documents/UU/MCCO/projects/setup-missiles/dist-newstyle/build/setup-missiles-0.0.1/build/setup-missiles/setup-missiles ...
[1 of 1] Compiling Main             ( /home/arian/Documents/UU/MCCO/projects/setup-missiles/dist/setup/setup.hs, /home/arian/Documents/UU/MCCO/projects/setup-missiles/dist/setup/Main.o )

/home/arian/Documents/UU/MCCO/projects/setup-missiles/dist/setup/setup.hs:5:1: error:
    Failed to load interface for ‘Acme.Missiles’
    Use -v to see a list of the files searched for.
```

### Expected behaviour:

It downloads dependencies, it launches a nuclear missile during setup, and then compiles our `Main.hs`

### Observed behaviour:

It downloads dependencies, it launches the nuclear missile during setup,
it then tries to recompile setup, and can not find the dependencies it just installed and fails.



