#!/bin/bash

docker-compose logs -f -t | grep --color -i -e error -e warn -e info -e version
