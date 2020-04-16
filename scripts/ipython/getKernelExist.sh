out=`jupyter kernelspec list | grep  "$1$"`

if [ -z "$out" ]; then
	echo "False"
else
	echo "True"
fi
