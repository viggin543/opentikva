# jira command line tool
---
### tired of waiting for jira ui to respond ?
### no one likes opening tickets...

jira command line tool .
currently supports opening tasks.
listing tasks assigned to you.

can be integrated with alfred workflows.
---
## intallation:

```bash
brew tap viggin543/opentikva git@github.com:viggin543/opentikva.git 
brew install viggin543/opentikva/jira
```
---
## usage:
```
usage: 
      ct|createTask <title> <description> <assignee> - creates a task
      ls|list  <-v:verbose>  - list  your current tasks
```
### example:

#### listing tickets
assuming your jita project key is `KAN` 

```
$ jira ls 
    KAN-123
    KAN-456
    KAN-457

$ jira ls -v
[
...
  {
    "title": "KAN-8111",
    "description": "be nice",
    "url": "https://${JIRA_DOMAIN}/browse/KAN-8111"
  },
  {
    "title": "KAN-7870",
    "description": "eat veggies",
    "url": "https://${JIRA_DOMAIN}/browse/KAN-7870"
  }
]
```
#### creating tickets
```
$ jira createTask title "a very detailed description" igor

https://${JIRA_DOMAIN}/browse/KAN-123
```
 

## configuration:
```
config env vars: 
   JIRA_USER 
   JIRA_DOMAIN - host of your jira http://'${JIRA_DOMAIN}'/rest/api/2...
   JIRA_PASS - jira api token: https://confluence.atlassian.com/cloud/api-tokens-938839638.html
   to check you'r credentials work try the following:
   curl -u JIRA_USER:JIRA_PASS 'https://JIRA_DOMAIN/rest/api/2/user/search?username=JIRA_USER'
```

   ---

## Contributing
 
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
 
## License
 
The MIT License (MIT)

Copyright (c) 2019 Domrev Igor

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.