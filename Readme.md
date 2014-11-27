Skel Files for Linux Machines
=============================
This is a collection of skeleton directories for various projects in the Linux
world. Below is an exhaustive list of the type of projects included: 

* C (cproj)
* Latex (texproj)
* data (octave, gnuplot)

Installation 
------------

There is no formal installation for these skeleton files. You can put
them wherever you wish (preferably somewhere sensable like ~/src/skel/
or ~/.skel). Included is a shell script that you should use to create a
new project somewhere. Run:  

	$ skel.sh 

To see the usage of this script. To make you life a bit easier add this
alias to your shell's profile file (~/.bashrc for most Unix based
systems): 

	(in ~/.bashrc)
	export SKELPATH="<path to skeleton directories here>"
	alias skel="<path to skel.sh>"

Update the alias to your shell:

	$ . ~/.bashrc (or the equivalent)

Example(Creates a new c project in the `newCProjectDir` directory): 

	$ skel cproj ./newCProjectDir/

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
* gnuplot 
* octave
