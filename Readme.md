Skel Files for Linux Machines
=============================
This is a collection of skeleton directories for various projects in the Linux
world. Below is an exhaustive list of the type of projects included: 

* C (cproj)
* Latex (texproj)

Installation 
------------
There is no formal installation for these skeleton files. You can put them
wherever you wish (preferably somewhere sensable like ~/src/skel/). To make you
life a bit easier add this alias to your shell's profile file (~/.bashrc for
most Unix based systems): 

	$SKELPATH="<path to skeleton directories here>" #e.g: ~/src/skel/ 
	alias skel="cp -pr $SKELPATH/"

Run:
	. ~/.bashrc (the equivalent)

To update the alias to your shell. Now you can run:

	skel cproj ./newCProjectDir/

To create a new c project in the `newCProjectDir` directory.

Project Build Systems 
---------------------
Most of the projects included default to using make as the build system. This is
to provide standardization across most linux platforms. If a different build
system is found in a skeleton file then read the README.md file for that project. 

Project Dependencies 
--------------------
Build dependencies are various amoung the projects. Read the README file for
each skeleton directory for the needed default dependencies. See below for a
known list of dependencies (assume the lastest version for each):

* gnu make
* gcc 
