# test-toolkit

## Usage

Prerequset: clone the repo in the CI:
```bash
git clone https://github.com/api7/test-toolkit/ t/lib/toolkit
```

Use this in the test code:

* encode json with key sorted

```lua
package.path = "t/lib/toolkit/?.lua;" .. package.path
local json = require("json")
json.encode({xxx = yy, a = b}, {sortkey = true})
```
