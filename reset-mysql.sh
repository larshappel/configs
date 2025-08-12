echo "Run this script with sudo to give it rights to kill processes."
echo "Local databases will be left intact."
brew services stop mysql
pkill mysqld
brew postinstall mysql
brew services restart mysql
echo "All done. Login locally with 'mysql -u root' (no pwd)."
