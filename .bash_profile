###############################################################################
#
# Source bashrc
#
################################################################################

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

###############################################################################
#
# Environment Variable Declarations
#
###############################################################################

# Personal shell script folder
export PATH=$PATH:/Users/chirag/bin

# Android Studio executables
export PATH=/Users/chirag/Library/Android/sdk/platform-tools:$PATH
export PATH=/Users/chirag/Library/Android/sdk/tools:$PATH

# Java Stuff
export JAVA_HOME=$(/usr/libexec/java_home)
export JRE_HOME=$JAVA_HOME/jre
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin

# VirtualEnvWrapper
export WORKON_HOME=~/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
source /usr/local/bin/virtualenvwrapper.sh

# HBASE
export HBASE_HOME=/usr/loca/Cellar/hbase/1.1.5_1

# Stupid big data hadoop stuff
#export HADOOP_HOME=/usr/local/Cellar/hadoop/2.6.0
#export MAHOUT_HOME=/Users/chiragtailor/Documents/School/Classes/cs8803/mahout
#export MAHOUT_LOCAL=true
#export PATH=$PATH:$MAHOUT_HOME/bin:$HADOOP_HOME/bin

# Weka jars
#export WEKAINSTALL=~/Documents/weka-3-7-13
#export CLASSPATH=$WEKAINSTALL/weka.jar:$WEKAINSTALL/LibSVM/LibSVM.jar:$WEKAINSTALL/LibSVM/lib/libsvm.jar:.

# Cool terminal colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=ExFxCxDxBxegedabagacad

# Python Interpreter Startup Script
export PYTHONSTARTUP=$HOME/.config/python/python-startup.py
