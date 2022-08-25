if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rmithran/RenameX.git /RenameX
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RenameX
fi
cd /RenameX
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 -m MeshRenameBot