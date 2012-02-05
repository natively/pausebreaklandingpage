# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $( ".link_block" ).bind "mouseenter", ->
    $( this ).find( ".inner" ).fadeIn( "fast" )
  
  $( ".link_block" ).bind "mouseleave", ->
    $( this ).find( ".inner" ).fadeOut( "fast" )