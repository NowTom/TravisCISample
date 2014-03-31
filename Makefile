WORKSPACE = TravisCISample.xcworkspace
TEST_TARGET = TravisCISample

clean:
	xctool \
      clean \
      -workspace ${WORKSPACE} \
      -scheme ${TEST_TARGET}
test:
	xctool \
      test \
      -workspace ${WORKSPACE} \
      -scheme ${TEST_TARGET} \
      -sdk iphonesimulator \
      ONLY_ACTIVE_ARCH=NO

test-with-coverage:
	xctool \
      test \
      -workspace ${WORKSPACE} \
      -scheme ${TEST_TARGET} \
      -sdk iphonesimulator \
      -configuration Debug \
      ONLY_ACTIVE_ARCH=NO \
      TEST_AFTER_BUILD=YES \
      TEST_HOST= \
      OBJROOT=build \
      GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
      GCC_GENERATE_TEST_COVERAGE_FILES=YES
