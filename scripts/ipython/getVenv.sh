#/bin/sh
venv_name=`echo $VIRTUAL_ENV`
venv_name=`basename "$venv_name"`

if [ -z "$venv_name" ]; then
	echo "Default"
else
	echo "$venv_name"
fi
