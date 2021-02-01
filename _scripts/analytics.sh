#!/usr/bin/env sh

LOG_DIR=/tmp/logs/
rm -rf $LOG_DIR
mkdir -p $LOG_DIR

RUN_FROM="$(dirname "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" )"

aws s3 sync s3://personal-website-jcty-logs/pixel-logs/ $LOG_DIR --profile=justine

python3 $RUN_FROM/_scripts/cloudfront_to_combined.py --days=${1:-60} $LOG_DIR > $LOG_DIR/combined.log
echo 'finished combining logs'

goaccess $LOG_DIR/combined.log -o $LOG_DIR/report.html --log-format=COMBINED
chromium $LOG_DIR/report.html

