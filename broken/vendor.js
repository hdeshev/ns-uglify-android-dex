var g;
var m=function(t){
    __extends(e,t);
    function e(e,r,n){
        t.call(this);
        this._observer=e;
        this._target=r;
        this._type=n;
        return global.__native(this)
    }
    e.prototype.onDown=function(t){
        console.log("TapAndDoubleTapGestureListener.onDown");
        return true
    };
    e.prototype.onSingleTapUp=function(t){
        console.log("TapAndDoubleTapGestureListener.onSingleTapUp");
        if(this._type&i.GestureTypes.tap){
            var e=d(i.GestureTypes.tap,this._target,t);
            v(this._observer,e)
        }
        return true
    };
    e.prototype.onDoubleTap=function(t){
        console.log("TapAndDoubleTapGestureListener.onDoubleTap");
        if(this._type&i.GestureTypes.doubleTap){
            var e=d(i.GestureTypes.doubleTap,this._target,t);
            v(this._observer,e)
        }
        return true
    };
    e.prototype.onLongPress=function(t){
        console.log("TapAndDoubleTapGestureListener.onLongPress");
        if(this._type&i.GestureTypes.longPress){
            var e=d(i.GestureTypes.longPress,this._target,t);
            v(this._observer,e)
        }
    };
    return e
}(android.view.GestureDetector.SimpleOnGestureListener)
;g=m;
