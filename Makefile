PROJECT = TravisCISample.xcodeproj
TEST_TARGET = TravisCISample

clean:
	xctool \
      clean \
      -project ${PROJECT} \
      -scheme ${TEST_TARGET}
test:
	xctool \
      test \
      -project ${PROJECT} \
      -scheme ${TEST_TARGET} \
      -sdk iphonesimulator \
      ONLY_ACTIVE_ARCH=NO

test-with-coverage:
	xctool \
      test \
      -project ${PROJECT} \
      -scheme ${TEST_TARGET} \
      -sdk iphonesimulator \
      ONLY_ACTIVE_ARCH=NO \
      GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
      GCC_GENERATE_TEST_COVERAGE_FILES=YES

send-coverage:
	coveralls
