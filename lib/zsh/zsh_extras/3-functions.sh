function ccu() {
  echo $1 | sed -E 's/([A-Z])/_\L\1/g'
}

function setjdk() {
if [ $# -ne 0 ]; then
  removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
  if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
  fi
  export JAVA_HOME=`/usr/libexec/java_home -v $@`
  export PATH=$JAVA_HOME/bin:$PATH
fi
}

function removeFromPath() {
export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
setjdk 1.7

function getpic() {
number=$1
s3cmd get --force s3://vish-production/photos/${number}/${number}.jpg ~/Pictures/vishvish/${number}_original.jpg
}

function getlpic() {
number=$1
s3cmd get --force s3://vish-production/photos/${number}/${number}_large.jpg ~/Pictures/vishvish/${number}_large.jpg
}

function getoldpic() {
number=$1
s3cmd get --force s3://vish-production/photos/${number}/${number}_original.jpg ~/Pictures/vishvish/${number}_original.jpg
}


function updatevim(){

START_HERE="${HOME}/.vim/bundle";

cd $START_HERE;

echo -e "\nPulling down latest for $START_HERE\n";

for d in $(find . -maxdepth 1 -mindepth 1 -type d); do
  echo -e "$d";
  cd $d;
  git remote -v;
  git pull;
  cd $START_HERE;
done

echo -e "\nYou're welcome.\n";
}
