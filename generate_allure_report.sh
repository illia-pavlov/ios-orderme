#!/bin/bash

# Clean previous results
rm -rf TestResults.xcresult test-results.xml allure-results allure-report

# Run tests and generate JUnit XML
xcodebuild test -scheme orderMe -destination 'platform=iOS Simulator,name=iPhone 16 Pro' -resultBundlePath TestResults | xcpretty -r junit -o test-results.xml

# Prepare Allure results
mkdir -p allure-results
mv test-results.xml allure-results/

# Generate Allure results and report
allure generate allure-results -o allure-results-tmp
mv allure-results-tmp/* allure-results/
rm -rf allure-results-tmp
allure generate allure-results -o allure-report

