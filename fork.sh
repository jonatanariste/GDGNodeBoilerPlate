git checkout -b feature
#  ( making changes ... )
git commit -m "done with feature"

# It's time to fork the repo!
git fork
#(forking repo on GitHub...)
#·→ git remote add YOUR_USER git://github.com/YOUR_USER/hub.git

# push the changes to your new remote
git push YOUR_USER feature
# open a pull request for the topic branch you've just pushed
git pull-request
#→ (opens a text editor for your pull request message)