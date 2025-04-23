#!/bin/bash
# Run performance tests using ApacheBench (ab) or wrk:
# - Target app endpoint
# - Report latency, throughput

ab -n 100 -c 10 http://localhost:3000/
