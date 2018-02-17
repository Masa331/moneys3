#!/usr/bin/env bash

gem build money_s3.gemspec
gem push money_s3-*
rm money_s3-*
