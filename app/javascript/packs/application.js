// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("packs/global")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});



// Get the elements
var from_input = $('#startingDate').pickadate(),
  from_picker = from_input.pickadate('picker')
var to_input = $('#endingDate').pickadate(),
  to_picker = to_input.pickadate('picker')

// Check if there’s a “from” or “to” date to start with and if so, set their appropriate properties.
if (from_picker.get('value')) {
  to_picker.set('min', from_picker.get('select'))
}
if (to_picker.get('value')) {
  from_picker.set('max', to_picker.get('select'))
}

// Apply event listeners in case of setting new “from” / “to” limits to have them update on the other end. If ‘clear’ button is pressed, reset the value.
from_picker.on('set', function (event) {
  if (event.select) {
    to_picker.set('min', from_picker.get('select'))
  } else if ('clear' in event) {
    to_picker.set('min', false)
  }
})
to_picker.on('set', function (event) {
  if (event.select) {
    from_picker.set('max', to_picker.get('select'))
  } else if ('clear' in event) {
    from_picker.set('max', false)
  }
})

(function ($) {
  'use strict';
  /*==================================================================
      [ Daterangepicker ]*/
  
  
  try {
  
      $('#input-start').daterangepicker({
          ranges: true,
          autoApply: true,
          applyButtonClasses: false,
          autoUpdateInput: false
      },function (start, end) {
          $('#input-start').val(start.format('MM/DD/YYYY'));
          $('#input-end').val(end.format('MM/DD/YYYY'));
      });
  
  
  } catch(er) {console.log(er);}
  /*==================================================================
      [ Input Number ]*/
  
  try {
  
      var inputCon = $('.js-number-input');
  
      inputCon.each(function () {
          var that = $(this);
  
          var btnPlus = that.find('.plus');
          var btnMinus = that.find('.minus');
          var qtyInput = that.find('.quantity');
  
  
          btnPlus.on('click', function () {
              var oldValue = parseInt(qtyInput.val());
              var newVal = oldValue + 1;
              qtyInput.val(refineString(newVal));
          });
  
          btnMinus.on('click', function () {
              var min = 0;
  
              var oldValue = parseInt(qtyInput.val());
              if (oldValue <= min) {
                  var newVal = oldValue;
              } else {
                  var newVal = oldValue - 1;
              }
              qtyInput.val(refineString(newVal));
          });
      });
  
      function refineString(s) {
          if(parseInt(s) <= 1) return parseInt(s) + " Guest";
          else return parseInt(s) + " Guests";
      }
  
  }catch (e) {
      console.log(e);
  }

})(jQuery);