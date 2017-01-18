#!/bin/sh

sed -i -e '/return TapAndDoubleTapGestureListener/i\    TapAndDoubleTapGestureListener = __decorate([\n        Interfaces([android.view.GestureDetector.SimpleOnGestureListener])\n    ], TapAndDoubleTapGestureListener);'  node_modules/tns-core-modules/ui/gestures/gestures.android.js 
