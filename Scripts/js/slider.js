
'use strict';



(function ($) {

    if ($('.intro-slider').length > 0) {
        var $scrollbar = $('.scrollbar');
        var $frame = $('.intro-slider');
        var sly = new Sly($frame, {
            horizontal: 1,
            itemNav: 'forceCentered',
            activateMiddle: 1,
            smart: 1,
            activateOn: 'click',
            //mouseDragging: 1,
            touchDragging: 1,
            releaseSwing: 1,
            startAt: 10,
            scrollBar: $scrollbar,
            //scrollBy: 1,
            activatePageOn: 'click',
            speed: 200,
            moveBy: 600,
            elasticBounds: 1,
            dragHandle: 1,
            dynamicHandle: 1,
            clickBar: 1,
        }).init();
    }

})(jQuery);

