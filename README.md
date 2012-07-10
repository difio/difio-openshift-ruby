Registration agent for Difio, preconfigured for OpenShift / Ruby
applications.

It compiles a list of installed packages and sends it to http://www.dif.io.

Installing on your OpenShift Ruby application
-----------------------------------------------------

- Create an account at http://www.dif.io

- Create your Ruby application in OpenShift

        rhc app create -a myapp -t ruby-1.8

- Add a dependency in your application's Gemfile

        ...
        gem 'difio-openshift-ruby'
        ...

- Set your userID in the ./data/DIFIO_SETTINGS file

        echo "export DIFIO_USER_ID=YourUserID"  > ./data/DIFIO_SETTINGS

- Enable the registration script in .openshift/action_hooks/post_deploy

        cd $OPENSHIFT_REPO_DIR
        source data/DIFIO_SETTINGS
        bundle exec vendor/bundle/ruby/1.8/bin/difio-openshift

- Run bundle install to install the Difio gems

        bundle install

- Commit your changes

        git add .
        git commit -m "enable Difio registration"

- Then push your application to OpenShift

        git push

That's it, you can now check your application statistics at http://www.dif.io
