curDir=$(pwd)
while [  "${curDir}" != ""	]
do 
	echo "${curDir}/tags"
	if [ -f  "${curDir}/tags" ]
	then 
		echo "load tags : " "${curDir}/tags"
		sed -i "s#^.*tags.*\$#set tags=${curDir}/tags#" ~/.vimrc
		exit 0
	fi
	curDir=${curDir%/*}
done
echo "do not find any tags"
