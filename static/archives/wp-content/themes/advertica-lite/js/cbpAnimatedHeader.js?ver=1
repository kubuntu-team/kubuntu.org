/**

 * cbpAnimatedHeader.js v1.0.0

 * http://www.codrops.com

 *

 * Licensed under the MIT license.

 * http://www.opensource.org/licenses/mit-license.php

 * 

 * Copyright 2013, Codrops

 * http://www.codrops.com

 */

 

/*!

 * classie - class helper functions

 * from bonzo https://github.com/ded/bonzo

 * 

 * classie.has( elem, 'my-class' ) -> true/false

 * classie.add( elem, 'my-new-class' )

 * classie.remove( elem, 'my-unwanted-class' )

 * classie.toggle( elem, 'my-class' )

 */



/*jshint browser: true, strict: true, undef: true */

/*global define: false */



( function( window ) {

'use strict';



// class helper functions from bonzo https://github.com/ded/bonzo



function classReg( className ) {

  return new RegExp("(^|\\s+)" + className + "(\\s+|$)");

}



// classList support for class management

// altho to be fair, the api sucks because it won't accept multiple classes at once

var hasClass, addClass, removeClass;



if ( 'classList' in document.documentElement ) {

  hasClass = function( elem, c ) {

    return elem.classList.contains( c );

  };

  addClass = function( elem, c ) {

    elem.classList.add( c );

  };

  removeClass = function( elem, c ) {

    elem.classList.remove( c );

  };

}

else {

  hasClass = function( elem, c ) {

    return classReg( c ).test( elem.className );

  };

  addClass = function( elem, c ) {

    if ( !hasClass( elem, c ) ) {

      elem.className = elem.className + ' ' + c;

    }

  };

  removeClass = function( elem, c ) {

    elem.className = elem.className.replace( classReg( c ), ' ' );

  };

}



function toggleClass( elem, c ) {

  var fn = hasClass( elem, c ) ? removeClass : addClass;

  fn( elem, c );

}



var classie = {

  // full names

  hasClass: hasClass,

  addClass: addClass,

  removeClass: removeClass,

  toggleClass: toggleClass,

  // short names

  has: hasClass,

  add: addClass,

  remove: removeClass,

  toggle: toggleClass

};



// transport

if ( typeof define === 'function' && define.amd ) {

  // AMD

  define( classie );

} else {

  // browser global

  window.classie = classie;

}



})( window );



var cbpAnimatedHeader = (function() {



	var docElem = document.documentElement,

		header = document.querySelector( '#header' ),

		didScroll = false,

		changeHeaderOn = 200;



	function init() {

		window.addEventListener( 'scroll', function( event ) {

			if( !didScroll ) {

				didScroll = true;

				setTimeout( scrollPage, 0 );

			}

		}, false );

	}



	function scrollPage() {

		var sy = scrollY();

		if ( sy >= changeHeaderOn ) {

			jQuery('.header-clone').css('height','85');


			if(!jQuery('#header').hasClass('skehead-headernav-shrink')) {

				jQuery('#header').hide().addClass('skehead-headernav-shrink');

			}


			if(sy > 200) {
				
				jQuery('#header').fadeIn();

			}


			if(jQuery('#wpadminbar').length!==0){

				jQuery('.skehead-headernav-shrink').css('top','28px');

			}

		}

		else {

			jQuery('.header-clone').css('height','0');

			classie.remove( header, 'skehead-headernav-shrink');

			jQuery('#header').show();

			jQuery('.skehead-headernav').css('top','0px');

		}

		didScroll = false;

	}



	function scrollY() {

		return window.pageYOffset || docElem.scrollTop;

	}



	init();



})();