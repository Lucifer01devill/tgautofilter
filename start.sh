#Coded By JonSnow11
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Lucifer01devill/tgautofilter.git /tgautofilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tgautofilter
fi
cd /tgautofilter
pip3 install -U -r requirements.txt
echo "Bot Assembilng..."
python3 bot.py
