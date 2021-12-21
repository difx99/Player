echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/difx99/Player /Player
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/difx99/Player -b $BRANCH /Player
fi
cd /Player
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
