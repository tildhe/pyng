#!/bin/bash

# See this stackoverflow question
# http://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-f>
# for the magic in this command
SETUP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#
# Base package root. All the other releavant folders are relative to this
# location.
#
export PYNG_ROOT=$SETUP_DIR
echo "PYNG_ROOT set to " $PYNG_ROOT

#
# Add the root folder to the $PYTHONPATH so that we can effectively import
# the relevant modules.
#
export PYTHONPATH=$PYNG_ROOT:$PYTHONPATH
echo "PYTHONPATH set to " $PYTHONPATH


#
# Add the bin folder to the $PATH so that we have the executables off hand.
#
export PATH=$PYNG_ROOT/pyng/bin:$PATH 
echo "PATH set to " $PATH

