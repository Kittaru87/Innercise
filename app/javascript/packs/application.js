// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import '../stylesheets/application'
import 'bootstrap'
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

global.$ = require('jquery')

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
document.addEventListener("turbolinks:load", function() { 

  $('#colour').click(function(){
    $('#colour').attr('class', 'green');
  })

  $('#like-btn-id').click(function() {
    let currentLikes = parseInt($('#like-count-id').text());
    $('#like-btn-id').attr('class', 'btn-video-liked btn my-3');
    $('#like-btn-id').html('Added to profile');
    $('#like-count-id').text(currentLikes + 1);
  });

 })
