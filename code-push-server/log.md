<!--
 * @version: v0.0.1
 * @Author: hailong.chen
 * @Date: 2019-09-05 21:23:52
 * @LastEditors: hailong.chen
 * @LastEditTime: 2019-09-05 21:24:52
 * @Descripttion: 
 -->
[2019-09-05T21:20:50.115] [ERROR] cps:app - Error: Please create dir /Users/tablee/workspaces/storage



chenhailong@chenhailongdeMacBook-Pro:~/development/rn/hotfix/code-push-server$ npm run start

> code-push-server@0.5.4 start /Users/chenhailong/development/rn/hotfix/code-push-server
> node ./bin/www

[2019-09-05T21:20:50.115] [ERROR] cps:app - Error: Please create dir /Users/tablee/workspaces/storage
    at Object.<anonymous> (/Users/chenhailong/development/rn/hotfix/code-push-server/app.js:56:15)
    at Module._compile (internal/modules/cjs/loader.js:688:30)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:699:10)
    at Module.load (internal/modules/cjs/loader.js:598:32)
    at tryModuleLoad (internal/modules/cjs/loader.js:537:12)
    at Function.Module._load (internal/modules/cjs/loader.js:529:3)
    at Module.require (internal/modules/cjs/loader.js:636:17)
    at require (internal/modules/cjs/helpers.js:20:18)
    at Object.<anonymous> (/Users/chenhailong/development/rn/hotfix/code-push-server/bin/www:19:11)
    at Module._compile (internal/modules/cjs/loader.js:688:30)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:699:10)
    at Module.load (internal/modules/cjs/loader.js:598:32)
    at tryModuleLoad (internal/modules/cjs/loader.js:537:12)
    at Function.Module._load (internal/modules/cjs/loader.js:529:3)
    at Function.Module.runMain (internal/modules/cjs/loader.js:741:12)
    at startup (internal/bootstrap/node.js:285:19)
    at bootstrapNodeJSCore (internal/bootstrap/node.js:739:3)
/Users/chenhailong/development/rn/hotfix/code-push-server/app.js:58
      throw e;
      ^

Error: Please create dir /Users/tablee/workspaces/storage
    at Object.<anonymous> (/Users/chenhailong/development/rn/hotfix/code-push-server/app.js:56:15)
    at Module._compile (internal/modules/cjs/loader.js:688:30)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:699:10)
    at Module.load (internal/modules/cjs/loader.js:598:32)
    at tryModuleLoad (internal/modules/cjs/loader.js:537:12)
    at Function.Module._load (internal/modules/cjs/loader.js:529:3)
    at Module.require (internal/modules/cjs/loader.js:636:17)
    at require (internal/modules/cjs/helpers.js:20:18)
    at Object.<anonymous> (/Users/chenhailong/development/rn/hotfix/code-push-server/bin/www:19:11)
    at Module._compile (internal/modules/cjs/loader.js:688:30)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:699:10)
    at Module.load (internal/modules/cjs/loader.js:598:32)
    at tryModuleLoad (internal/modules/cjs/loader.js:537:12)
    at Function.Module._load (internal/modules/cjs/loader.js:529:3)
    at Function.Module.runMain (internal/modules/cjs/loader.js:741:12)
    at startup (internal/bootstrap/node.js:285:19)
    at bootstrapNodeJSCore (internal/bootstrap/node.js:739:3)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! code-push-server@0.5.4 start: `node ./bin/www`
npm ERR! Exit status 1
npm ERR! 
npm ERR! Failed at the code-push-server@0.5.4 start script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/chenhailong/.npm/_logs/2019-09-05T13_20_50_138Z-debug.log