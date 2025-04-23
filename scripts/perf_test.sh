#!/bin/bash
# Run performance tests using ApacheBench (ab) or wrk:
# - Target app endpoint
# - Report latency, throughput

ab -n 1000 -c 10 http://localhost:8000/
