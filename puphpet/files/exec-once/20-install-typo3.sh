mysqladmin -uroot -proot drop t3rookies_dev;

rm -rf -- /var/www/t3rookies.local

cd /var/www/
git clone https://github.com/AOE-T3Rookies-2016/project t3rookies.local
cd t3rookies.local
composer update
./typo3cms install:setup --non-interactive --database-user-name="root" --database-user-password="root" --database-host-name="localhost" --database-port="3306" --database-name="t3rookies_dev" --admin-user-name="admin" --admin-password="password" --site-name="t3rookies 2016"
