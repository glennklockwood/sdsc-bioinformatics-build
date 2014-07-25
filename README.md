Glenn K. Lockwood, April 2014

This directory contains my notes and build processes for all of the 
bioinformatics applications requested by a client.  In general, there are two 
types of files:

* README.* - bash scripts that contain all of the commands necessary to 
    install the application suffixed.  Most of these scripts can be run 
    directly as a script to complete the unpack, configure, build, and install 
    process.

* Makefile.* - as I progressed through the list of applications to install, I 
    began documenting the build process in Makefiles instead of shell scripts.
    These makefiles are fully contained and have the following targets: 

    * get (or the name of the tarball) - downloads the source code with the
      correct version from the Internet
    * $(APPDIR) - unpacks the tarball
    * configure - applies any configurations necessary to build the application
      on this host (TSCC, Gordon, and Trestles are supported)
    * build - compiles the application in-place
    * install - installs the application to its final resting place
    * test - run any validation tests bundled with the application tarball
    * clean - clean up after the build

As I added more applications, the process was refined so earlier Makefiles
may be crude or fail under odd circumstances.  In general, they can be used
to build and install the application by issuing "make && make install."  The
README scripts may have certain sections commented out based on the final
test I did before moving on to build another application, so your mileage may
vary out of the box.
