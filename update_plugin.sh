# copy folder foo into folder bar
# cp -r /path/to/foo /path/to/bar
# if folder bar exists before issuing the command, then foo and its content will be copied into the folder bar. However, if bar does not exist before issuing the command, then the folder bar will be created and the content of foo will be placed into bar
# targetA='/Users/caihaocui/Library/Application\ Support/QGIS/QGIS3/profiles/default/python/plugins/save_attributes/'
pluginsA='./plugins/save_attributes/*'
targetA='./backup/save_attributes/'

if [ ! -d $targetA ]; then
    mkdir -p $targetA
fi

echo 'Copy' $pluginsA 'to' $targetA
cp -R $pluginsA/* $targetA

pluginsB='./plugins/save_attributes_processing/*'
targetB='./backup/save_attributes_processing/'
echo 'Copy' $pluginsA 'to' $targetB

if [ ! -d $targetB ]; then
    mkdir -p $targetB
fi

cp -R $pluginsB/* $targetB
