echo create new dirs under files
. $HOME/.bashrc

CURRYEAR=$(date +'%Y')
CURRMONTH=$(date +'%m')

echo year is $CURRYEAR
echo month is $CURRMONTH

echo going to files dir
cd /opt/bitnami/redmine/files
if [ ! -d "$CURRYEAR" ]; then
	echo installing $CURRYEAR
	mkdir $CURRYEAR
	chmod -R a+rw *
else
	echo $CURRYEAR exists - skipping
fi

echo going to files/$CURRYEAR dir
cd /opt/bitnami/redmine/files/$CURRYEAR
if [ ! -d "$CURRMONTH" ]; then
	echo installing $CURRMONTH
	mkdir $CURRMONTH
	chmod -R a+rw *
else
	echo $CURRMONTH exists - skipping
fi


echo Done!
