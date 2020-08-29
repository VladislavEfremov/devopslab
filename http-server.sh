sudo apt update
sudo apt install git -y
git clone https://github.com/VladislavEfremov/devopslab.git
sudo apt install apache2 -y
cd devopslab/
sudo cp -r example_beebox/. /var/www/html/