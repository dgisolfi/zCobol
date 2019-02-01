# zCobol

## Purpose

My classmate Will decided it would be a good idea to use Cobol for our Algorithms class(CMPT 435L). While Ill-advised I couldn't let him struggle without a great environment to struggle in. He pointed out to me zCobol for z390 has Object Oriented support, however, the process to install this environment is tedious and quite confusing. 

## Image

The docker image can be built from the dockerfile using the make command in the makefile `build_image` once built it can be run either as standalone or as a development environment by running using the make commands. For a development environment run the make target: `run_image_dev` which will volume mount the src directory to the container for running your Cobol source code. The Docker image uses the source code found on the [z390 site](http://www.z390.org/zcobol/)

## Usage

to run the Portable Mainframe COBOL Compiler use the `zcobol` command in the container along with an argument for the file to be used.