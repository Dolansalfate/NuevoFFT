QT -= gui multimedia
CONFIG += c++11 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        QRealFourier-master/code/sources/qcomplexnumber.cpp \
        QRealFourier-master/code/sources/qfouriercalculator.cpp \
        QRealFourier-master/code/sources/qfourierfixedcalculator.cpp \
        QRealFourier-master/code/sources/qfouriertransformer.cpp \
        QRealFourier-master/code/sources/qfouriervariablecalculator.cpp \
        QRealFourier-master/code/sources/qwindowfunction.cpp \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    QRealFourier-master/Copyright.txt \
    QRealFourier-master/License.txt \
    QRealFourier-master/ReadMe.txt \
    QRealFourier-master/build/linux/linux-build-32bit \
    QRealFourier-master/build/linux/linux-build-64bit \
    QRealFourier-master/build/mac/mac-build-32bit \
    QRealFourier-master/build/mac/mac-build-64bit \
    QRealFourier-master/build/windows/windows-build-32bit.bat \
    QRealFourier-master/code/CMakeLists.txt \
    QRealFourier-master/code/cmake/Packaging.cmake \
    QRealFourier-master/code/cmake/Version.cmake \
    QRealFourier-master/code/examples/standalone/CMakeLists.txt \
    QRealFourier-master/gitpull \
    QRealFourier-master/gitpush \
    QRealFourier-master/other/adapt

HEADERS += \
    QRealFourier-master/code/examples/print.h \
    QRealFourier-master/code/fftreal/Array.h \
    QRealFourier-master/code/fftreal/Array.hpp \
    QRealFourier-master/code/fftreal/DynArray.h \
    QRealFourier-master/code/fftreal/DynArray.hpp \
    QRealFourier-master/code/fftreal/FFTReal.h \
    QRealFourier-master/code/fftreal/FFTReal.hpp \
    QRealFourier-master/code/fftreal/FFTRealFixLen.h \
    QRealFourier-master/code/fftreal/FFTRealFixLen.hpp \
    QRealFourier-master/code/fftreal/FFTRealFixLenParam.h \
    QRealFourier-master/code/fftreal/FFTRealPassDirect.h \
    QRealFourier-master/code/fftreal/FFTRealPassDirect.hpp \
    QRealFourier-master/code/fftreal/FFTRealPassInverse.h \
    QRealFourier-master/code/fftreal/FFTRealPassInverse.hpp \
    QRealFourier-master/code/fftreal/FFTRealSelect.h \
    QRealFourier-master/code/fftreal/FFTRealSelect.hpp \
    QRealFourier-master/code/fftreal/FFTRealUseTrigo.h \
    QRealFourier-master/code/fftreal/FFTRealUseTrigo.hpp \
    QRealFourier-master/code/fftreal/OscSinCos.h \
    QRealFourier-master/code/fftreal/OscSinCos.hpp \
    QRealFourier-master/code/fftreal/def.h \
    QRealFourier-master/code/headers/qcomplexnumber.h \
    QRealFourier-master/code/headers/qfouriercalculator.h \
    QRealFourier-master/code/headers/qfourierfixedcalculator.h \
    QRealFourier-master/code/headers/qfouriertransformer.h \
    QRealFourier-master/code/headers/qfouriervariablecalculator.h \
    QRealFourier-master/code/headers/qwindowfunction.h \
    QRealFourier-master/other/revert
