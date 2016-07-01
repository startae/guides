# Blogpost

## Write a Blogpost

Do you want to share your ideas and last discovers on our blog? You're warmly welcome! You just have to follow these steps:

* Create a new task in our [project](https://app.getflow.com/teams/91453/workspaces/216882/lists/912557)
* Create a Google Docs for your article and share the link in the task when it's ready for review (remember to move to the _Ready For Review_ column)
* You can follow [this template](https://docs.google.com/document/d/17pvoPgVBmrfVltyMDSN6UztiS_zBXpqbFitaCnzA0fg/edit) we created to make the process easier
* You can use tools such [Grammarly](http://grammarly.com) in order to check if everything is ok
* Post on the **#general** channel that you're done in order to get at least **3** reviewers for the article
* Subscribe the reviewers in the task
* Ask a developer to help you publishing on our site


## Review a Blogpost

* Write your suggestions in the suggestion mode or as comments instead of change the original article
* You can also use tools such [Grammarly](http://grammarly.com/) in order to check if everything is ok
* When finished, post in the task you have just reviewed
* Remember to check your comments to see if the writer replied or still needs your help


## Publish a Blogpost

* Make sure your repository is updated
* Create a new branch from [develop](https://github.com/startae/startae/tree/develop) called `blogpost/writer_name`
* Make sure you're following our structure:
  * Every blogpost file have to start with the date, e.g.: `2016-02–18-title.html.markdown`
  * We use `2592 × 926` dimension for the cover and `1400 × 933` for images inside the article
  * Keep the structure used for the images, e.g.: `startae/source/assets/images/articles/2016-02-18`
* Optimize the images using [imageOptim](http://imageoptim.com) or another tool, we recommend: [kraken.io](http://kraken.io) or [compressor.io](http://compressor.io)
* Add your modifications in our CHANGELOG.md file, e.g.:
```
    ## [1.4.1] - 2015-12-03
    ### Added
    Blog post "Stop complaining and start doing something about it"
```
* Every new blogpost will increase the `MINOR` number in the: `MAJOR.MINOR.PATCH` format. (We follow [these rules](http://semver.org/))
* Run the server to check if everything is fine, push your branch and submit a new pull request
* Update the task informing people everything is ok and get at least **2** approval from the developers in your pull request to develop branch
* Merge your pull request and delete your branch
* Check and test it on our [staging environment](http://startae420-dev-site.herokuapp.com)
* Merge develop into master and deploy to Heroku
