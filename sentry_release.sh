export SENTRY_AUTH_TOKEN=76847d79d27943bfa11d92bbb1d71f35c684363da44e4a28af7e5f1d3852a5f8
export SENTRY_ORG=comstudydaily
VERSION=$(sentry-cli releases propose-version)

# Create a release
sentry-cli releases new -p sentrystudy -p sentrystudy $VERSION

# Associate commits with the release
sentry-cli releases set-commits --auto $VERSION
