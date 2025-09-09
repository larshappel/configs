echo "Just restarting mysql@8.0 via brew. This may help with login issues .. <.<"
brew services stop mysql@8.0
brew services start mysql@8.0
echo "All done. Login locally with 'mysql -u root -p'."
