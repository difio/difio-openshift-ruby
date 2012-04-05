Ruby client side agent for monupco.com preconfigured for Openshift Express.


Installing on your Openshift Express Ruby application
-----------------------------------------------------

- Create an account at http://monupco.com

- Create your Ruby application in OpenShift

        # Example ruby app
        rhc app create -a monupcorubytest -t ruby-1.8

- Add a dependency in your application's Gemfile

        ...
        gem 'monupco-openshift-express-ruby'
        ...

- Set your userID in the ./data/MONUPCO_SETTINGS file

        echo "export MONUPCO_USER_ID=YourUserID"  > ./data/MONUPCO_SETTINGS

- Enable the registration script in .openshift/action_hooks/post_deploy

        source $OPENSHIFT_REPO_DIR/data/MONUPCO_SETTINGS
        bundle exec $OPENSHIFT_GEAR_DIR/repo/vendor/bundle/ruby/1.8/bin/monupco-openshift-express

- Commit your changes

        git add .
        git commit -m "enable monupco registration"

- Then push your application to OpenShift

        git push

That's it, you can now check your application statistics at <http://monupco.com>
