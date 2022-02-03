#!/bin/sh
echo '<?xml version="1.0" encoding="UTF-8"?>
<testsuites>
  <testsuite name="simple_test" tests="1" failures="0" errors="0">
    <testcase name="simple_test" status="run" duration="5" time="5">
      <system-out>Hello, world!!!</system-out>
    </testcase>
  </testsuite>
</testsuites>
' | tee ${XML_OUTPUT_FILE}
