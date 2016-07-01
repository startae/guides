# Site Maintenance

## Feature
* Make sure your repository is updated
* Create a new branch from develop called `feature/feature_name`
* Add your modifications in our CHANGELOG.md file, e.g.:
```
    ## [1.5.0] - 2015-12-03
    ### Added
    Feature name
```
* Every new feature will increase the `MINOR` number in the: `MAJOR.MINOR.PATCH` format. (We follow these rules)
* Run the server to check if everything is fine, push your branch and submit a new pull request
* Update the task informing people everything is ok and get at least 3 approval from the developers in your pull request to develop branch
* Merge your pull request and delete your branch
* Check and test it on our staging environment
* Merge develop into master and deploy to Heroku

## Found bugs?

* Create a new task in our project
* Try to give us all the information you have, e.g.: print screen, browser name/version, operational system, desktop/mobile version.
* Post on the **#site-startae** channel that you found a bug and registered on Flow.

## Bugfix

* Make sure your repository is updated
* Create a new branch from develop called `fix/something`
* Add your modifications in our CHANGELOG.md file, e.g.:
```
    ## [1.4.1] - 2015-12-03
    ### Changed
    Bug fix
```
* Every new bugfix will increase the `PATCH` number in the: `MAJOR.MINOR.PATCH` format. (We follow these rules)
* Run the server to check if everything is fine, push your branch and submit a new pull request
* Update the task informing people everything is ok and get at least 2 approval from the developers in your pull request to develop branch
* Merge your pull request and delete your branch
* Check and test it on our staging environment
* Merge develop into master and deploy to Heroku

## Update gems and libs

* Make sure your repository is updated
* Create a new branch from develop called `feature/update_gems`
* Add your modifications in our CHANGELOG.md file, e.g.:
```
    ## [1.5.0] - 2015-12-03
    ### Changed
    Update Gemfile (middleman, middleman-livereload, sass)
```
* The updates will increase the `MINOR` number in the: `MAJOR.MINOR.PATCH` format. (We follow these rules)
* Run the server to check if everything is fine, push your branch and submit a new pull request
* Update the task informing people everything is ok and get at least 1 approval from the developers in your pull request to develop branch
* Merge your pull request and delete your branch
* Check and test it on our staging environment
* Merge develop into master and deploy to Heroku
