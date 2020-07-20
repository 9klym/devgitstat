# devgitstat
'devgitstat.rb' is a tool that help you summarize code lines for each user
in git directory

## Usage

To work with 'devgitstat.rb' you need 'git-fame' gem

Installation
gem install git_fame
Source 
https://rubygems.org/gems/git_fame

## Example output

use ruby devgitstat.rb "path_to_git_dir"
```
{"Alexander Klymenko"=>"8", "tester1"=>"4", "developer1"=>"0"}
```
OR

use ruby devgitstat.rb 
```
Enter path to a git directory, if devgitstat.rb run into git directory - enter empty line
ENTERED PATH
{"Alexander Klymenko"=>"8", "tester1"=>"4", "developer1"=>"0"}
```

