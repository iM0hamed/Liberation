#!/bin/bash
xcrun -sdk iphoneos /Users/callum/mods-n-stuff/Coding/o-llvm-build/bin/clang -arch armv7 -arch arm64 -isystem/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.1.sdk --sysroot=$SYSROOT -I/usr/include/c++/4.2.1 -I/opt/theos/include/ -std=c++11 -stdlib=libc++ -lc++ -L/opt/theos/lib/ -lsubstrate -mios-version-min=5.0 -mllvm -sub -mllvm -fla -O3 Patch.cpp -c
xcrun -sdk iphoneos clang -arch armv7 -arch arm64 -isystem/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.1.sdk --sysroot=$SYSROOT -I/usr/include/c++/4.2.1 -I/opt/theos/include/ -std=c++11 -stdlib=libc++ -lc++ -L/opt/theos/lib/ -lsubstrate -mios-version-min=5.0 -O3 Settings.mm -c
libtool Patch.o Settings.o -o civ3.a
