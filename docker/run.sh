#!/usr/bin/env bash

source /codecept/docker/help.sh

# Check if tests are correctly mounted
if [[ -d "/tests/" ]]; then
        echo "CodeceptJS directory has been found."

	cp /tests/* /codecept

	mkdir /codecept/output

	npx codeceptjs run --reporter mocha-multi | tee /codecept/output/output.log

	cp -r /codecept/output /tests/
else
	display_usage
fi
