REM Build the website files
REM Should be run with "npm run build" - npm handles the pathing better (so no "#!/usr/bin/env" bash on top)

REM build the index.html file
node ./scripts/buildIndex.js

REM encrypt the example file
cd example
node ../cli/index.js example.html -p test --short --salt b93bbaf35459951c47721d1f3eaeb5b9 --config false --template-instructions "Enter \"test\" to unlock the page"
