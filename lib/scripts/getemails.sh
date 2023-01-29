echo starting getemails.sh
echo setting use_redmine
date
whoami
echo setting profiles
. $HOME/.bashrc
echo changing to redmine root
cd /opt/bitnami/redmine
pwd
echo doing rake
rake -f Rakefile redmine:plugins:email_fetcher:fetch_all_emails RAILS_ENV=production
echo out of rake
echo Finished!
