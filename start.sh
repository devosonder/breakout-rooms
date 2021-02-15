#
#    Copyright 2020 Itude Mobile BV
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

#!/bin/bash
docker run --rm --name websocket -v $(pwd):/src -w /src -p 8888:8888 node:slim npm install
docker run -d --rm --name websocket -v $(pwd):/src -w /src -p 8888:8888 node:slim node /src/server.js
docker network connect docker-jitsi-meet_meet.jitsi websocket
