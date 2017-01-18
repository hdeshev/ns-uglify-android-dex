#!/bin/sh

sed -i -e '/return TapAndDoubleTapGestureListener/i\    TapAndDoubleTapGestureListener = __decorate([\n        Interfaces([android.view.GestureDetector.SimpleOnGestureListener])\n    ], TapAndDoubleTapGestureListener);'  node_modules/tns-core-modules/ui/gestures/gestures.android.js 

# Should cause an OOM Exception:
#
#
# :asbg:generateBindings
# Exception in thread "main" java.lang.OutOfMemoryError: Java heap space
#         at java.util.Arrays.copyOf(Arrays.java:3181)
#         at java.util.ArrayList.grow(ArrayList.java:261)
#         at java.util.ArrayList.ensureExplicitCapacity(ArrayList.java:235)
#         at java.util.ArrayList.ensureCapacityInternal(ArrayList.java:227)
#         at java.util.ArrayList.add(ArrayList.java:458)
#         at org.nativescript.staticbindinggenerator.Generator.collectInterfaceMethods(Generator.java:650)
#         at org.nativescript.staticbindinggenerator.Generator.getPublicApi(Generator.java:190)
#         at org.nativescript.staticbindinggenerator.Generator.writeBinding(Generator.java:312)
#         at org.nativescript.staticbindinggenerator.Generator.generateBinding(Generator.java:101)
#         at org.nativescript.staticbindinggenerator.Generator.processRows(Generator.java:138)
#         at org.nativescript.staticbindinggenerator.Generator.generateBindings(Generator.java:61)
#         at org.nativescript.staticbindinggenerator.Generator.writeBindings(Generator.java:49)
#         at org.nativescript.staticbindinggenerator.Main.main(Main.java:15)
# :asbg:generateBindings FAILED
