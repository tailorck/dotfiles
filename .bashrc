###############################################################################
#
# Functions to manage Java Versions
#
###############################################################################

function setjdk() {  
  if [ $# -ne 0 ]; then  
    removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'  
      if [ -n "${JAVA_HOME+x}" ]; then  
        removeFromPath $JAVA_HOME  
      fi  
      export JAVA_HOME=`/usr/libexec/java_home -v $@`  
      export PATH=$JAVA_HOME/bin:$PATH  
  fi  
  echo JAVA_HOME set to $JAVA_HOME  
  java -version  
}  

function removeFromPath() {  
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")  
}

function today {
  echo "Today's date is: "
  date +"%A, %B %-d, %Y"
}

function sync_opentsdb() {
    cd /Users/chirag/Documents/School/research/opentsdb
    if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
        git commit -am "$1"
    else
        git commit -am update
    fi
    git push
    ssh ctailor3@mimosa40.cc.gatech.edu '(cd /dfs/common/code/opentsdb_ingest && git pull)'
}

###############################################################################
#
# Start mongo = brew services start mongdb
# Stop mongo = brew services stop mongodb
#
# Start hbase = brew services start hbase
# stop hbase = brew services stop hbase
#
###############################################################################

###############################################################################
#
# Aliases
#
###############################################################################

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
