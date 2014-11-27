##############################
# @file Makefile for <+PROJECT+>
##############################
##-- PROJECT {{{ ------------------------------------------------------
SHELL=/bin/sh
PROJECT=<+PROJECT+>
VERSION=0.1
#-- END PROJECT }}} --------------------------------------------------
#-- DIRS {{{ ---------------------------------------------------------
PREFIX=.
CLEAN=
GRAPHDIR=$(PREFIX)/graphs
TABLDIR=$(PREFIX)/tables
#-- END DIRS }}} -----------------------------------------------------
#-- FILES {{{ --------------------------------------------------------
DATAFILE=$(PREFIX)/main.m
GRAPHFILE=$(PREFIX)/graph.gp
#-- END FILES }}} ----------------------------------------------------

.PHONY: all clean data graphs

all: data graphs

data: $(DATAFILE)
	octave $(DATAFILE)

graph: $(GRAPHFILE)
	gnuplot -p $(GRAPHFILE)
