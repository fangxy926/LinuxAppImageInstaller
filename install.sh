#/bin/sh

APP=$1

# config
INSTALL_DIR=/opt/siyuan
DESKTOP_DIR=~/Desktop

# copy files
sudo mkdir -p $INSTALL_DIR/bin/
sudo cp -f $APP $INSTALL_DIR/bin/siyuan
# sudo cp -f siyuan $INSTALL_DIR/bin/
sudo cp -f siyuan.svg $INSTALL_DIR/bin/

sudo cp -f siyuan.desktop /usr/share/applications/
cp -f siyuan.desktop $DESKTOP_DIR/siyuan.desktop

# fix privilleges
sudo chmod a+x  $DESKTOP_DIR/siyuan.desktop
sudo chmod a+x  $INSTALL_DIR/bin/siyuan
#sudo chmod a+x  $INSTALL_DIR/bin/$VNOTE_APP

# create links for terminal
sudo ln -s -f  $INSTALL_DIR/bin/siyuan /usr/bin/siyuan

echo "Installation Finished."
echo "安装完成。"

