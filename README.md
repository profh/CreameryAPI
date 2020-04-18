Creamery API :: Spring 2020
===

Because of the challenges of remote education, the second technical challenge we have for you today is to build a basic API for the Creamery project you have been developing in 67-272 this semester.  This will cover a number of skills discussed in class related to controllers, routing and serialization.

This project is being released at or around 12:01am EDT on Thursday, April 23, 2020 via our GitLab server at darkknight-cmuis.net and must be completed and posted back to your private repository on darkknight no later than 11:59pm EDT on the same day.  It should not take all day to complete it, but given we have students throughout the world right now, a 24 hour period should allow everyone ample time to complete the technical challenge in a timely manner.

Getting Started
---
Having downloaded this starter code from your private repository on darkknight-cmuis.net, you need to first install the gem libraries we've specified with `bundle install`.  You will not need, nor should you use, any other gems other than the ones given to you.  The starter code has all the models, services, lib extensions and the like used in the phase 5 code for the final project (just no controllers, routes or serializers).

Second, we have provided a script to build your dev and test databases and prepopulate them with the testing context data (also used to generate the samples provided).  To do this, simply run `rails db:contexts` on the command line (assuming you are in the main directory for the project).

Verify that everything is in working order by running the tests for the models provided: `rails test:models`.  If the tests do not run or do not all pass, contact Prof. H via email and post a private question on piazza to the TAs so you can get assistance from someone as soon as possible.


Requirements
---
You mission, should you choose to accept it, is to create six read-only endpoints for a Creamery API.  Those endpoints are:

- http://localhost:3000/employees
- http://localhost:3000/spotlight/{id}
- http://localhost:3000/stores
- http://localhost:3000/stores/{id}
- http://localhost:3000/stores/{id}/upcoming
- http://localhost:3000/shifts/{id}

You must create custom routes to generate these endpoints (no `resources :model` allowed) and write custom controllers that only contain the custom actions required.  Do NOT use rails scaffolding -- we have specific tests to test for this and if you did this, you will drop to 50 percent credit as the ceiling immediately; part of the learning assessment here is your ability to write these things for yourselves.

**You must also read and complete the Academic Integrity statement -- failure to do so will result in an immediate zero grade.**

Samples
---
Samples from each of these endpoints is provided to you in the `samples` directory.  These outputs were generated with the context data running the script referenced above.  At the top of each sample is the cURL command used to generate the json output (see note below on pretty printing the output; this is for your convenience and not strictly necessary).  

Note that our testing data will differ slightly from the data we populate the database with in the `db:contexts` script and we may use different ID numbers in the endpoint call.  This will ensure that you don't simply return the sample text in the method, but actually generated it properly using serializers and controllers.

In some cases there are multiple examples of the same endpoint to illustrate some differences.  For example, in the `shifts/{id}` call, we run the endpoint for both a completed shift and one that has started, but not yet finished.  In the other case were we gave you multiple calls to the same endpoint, one has a single shift returned and another has multiple shifts returned to help you better understand what we are looking for.


Constraints
---
You are free to use your notes, look at the PATS API code posted online, and look at the labs we did for API building.  You may look on [stackoverflow.com](https://stackoverflow.com) for past answers that may be helpful to you as well as look at the online API for Rails at [apidock.com](https://apidock.com).  You may not use other online resources, nor post any questions related to this assignment on any online forum, nor can you answer any questions that could relate to this assignment during this time.  Most importantly, you cannot share code or converse with any present or past student in the class regarding this assignment while it is ongoing.  _More constraints are spelled out in the Academic Integrity statement that you must complete to get credit for this assignment,_ so be sure to read and electronically sign this pledge.


Completing the Assignment
---
The assignment must be completed and posted on your private repository (same place you retrieved this code from) no later than 11:59pm EDT on April 23, 2020.  The code must be on the master branch (no other branches will be graded) and the base level of the repository should be the base level of the application.  At the due time, all student repositories will be locked and you will have no further access. Do not attempt to zip your code and email it to Prof. H or the TAs after the deadline; Gmail will filter this out anyways thinking the code could be malware.

After pushing your code to your private repository, be sure to go to gradescope and upload your solution from darkknight to the gradescope assignment just as you did in Phase 4 and the first challenge. (See piazza if you did not do this in Phase 4 for instructions regarding gradescope and gitlab.)  If successful, gradescope will give you an acknowledgement of receipt, but it will not give you any details on the tests that passed (or didn't).  Please be aware that _the gradescope endpoints may vary slightly to catch people who try to undermine the integrity of the process by hardcoding endpoint results_. If your endpoints match locally and you have not hardcoded the output, then you will have no problem with the gradescope tests.

Partial credit is available, of course, and you will get credit for as many of the endpoints you can correctly complete in the time allowed.  There are three levels of difficulty in these endpoints, so probably better to get the low hanging fruit first.  Grades will be determined by your ability to accurately replicate the json -- if it is even off by a little bit, it will fail our tests, so attention to detail is required. We are __not debugging nor giving partial credit for spelling mistakes, capitalization issues or other formatting problems,__ so please be careful of these types of problems.

Finally: **If you have not done so already, be sure to electronically sign off on the Academic Integrity Pledge in the PLEDGE.md file.** Failure to do so will result in an immediate zero grade. (This was discussed at length in class and mentioned twice here in bold and once in italics, so we are pretty serious about this matter.)

---
Post Script on JSON Formatting
---
Pretty printing json as you see it in the samples is not particularly hard, but not how json comes by default.  In my `.bash_profile` file I effectively add the following alias that allows me to pipe in the `jsonpp` command to my output and format the json you see in the samples and in class: 
`alias jsonpp="python3 -m json.tool"`

(As you can see in my [dotfiles repo](https://github.com/profh/dotfiles) online, I did this via an include file called bash_aliases, but you can add this directly to `.bash_profile` if you want.) 

That said, it might be easier for many of you to use Chrome extension [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa) that I also used in lecture for pretty printing your json and making it more readable. There should be no issue running these endpoints in the browser, as was done in lecture several times.

Note that our grading tool will _not_ pretty print the json -- doing so is strictly for your convenience to make the output more readable so you can be sure that you have replicated the result correctly.

---
As always, should you or any of your IM Force be caught or killed, the Secretary will disavow any knowledge of your actions. This file will self-destruct in ten seconds. Good luck.
