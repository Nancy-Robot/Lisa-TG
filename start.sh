if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Nancy-Robot/Lisa-TG.git /Lisa-TG
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lisa-TG
fi
cd /Lisa-TG
pip3 install -U -r requirements.txt
echo "Starting Lisa-TG...."
python3 bot.py
