#Requirements
sudo apt-get -y install make
sudo apt-get -y install gcc
sudo apt-get -y install libreadline6 libreadline6-dev
sudo apt-get -y install zlib1g-dev
sudo apt-get -y install bison

#Download postgres
wget https://ftp.postgresql.org/pub/source/v8.4.22/postgresql-8.4.22.tar.gz
tar xfz postgresql-8.4.22.tar.gz
cd postgresql-8.4.22

#Installation
./configure
make
su
make install
adduser postgres
mkdir /usr/local/pgsql/data
chown postgres /usr/local/pgsql/data
su - postgres
#/usr/local/pgsql/bin/initdb -D /usr/local/pgsql/data
#/usr/local/pgsql/bin/postgres -D /usr/local/pgsql/data >logfile 2>&1 &
#/usr/local/pgsql/bin/createdb test
#/usr/local/pgsql/bin/psql test