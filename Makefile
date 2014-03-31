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
