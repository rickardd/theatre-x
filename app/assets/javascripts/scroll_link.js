
window.scrollLink = (function(){

  var animationEndString = "webkitAnimationEnd oanimationend oAnimationEnd msAnimationEnd animationend",
    linkClass = ".js-scroll-link",
    $links = jQuery,
    sectionClass = ".section",
    $sections = jQuery,
    fadeClass = "fadeOut",
    $firstSection = jQuery,
    declareElements = function(){
      $links = $(linkClass);
      $sections = $( sectionClass );
      $firstSection = $sections.eq(0);
    },
    getSections = function( obj ){
      if( obj.excludeId ){
        return $sections.not( obj.excludeId );
      }
      else{
        return $sections;
      }
    },
    removeAllFadeClasses = function(){
      $sections.removeClass( fadeClass );
    },
    addFadeClasses = function( $sections ){
      $sections.addClass( fadeClass );
    },
    scrollToSection = function( targetId ){
      $('html, body').animate({ scrollTop: $( targetId ).offset().top }, 500, "swing", function(){});
    },
    linkOnClick = function(e){
      // event hadnler
      e.preventDefault();

      var targetId = "#" + $(this).data("target");
      var $fadeOutSections = getSections( { excludeId: targetId } )
      removeAllFadeClasses();
      bindSectionAnimationEnd( $fadeOutSections );
      addFadeClasses( $fadeOutSections );
      scrollToSection( targetId );
    },
    onAnimationEnd = function( e ){
      // Event handler
      $sections.removeClass( fadeClass );

      $(this).unbind();
    },
    bindSectionAnimationEnd = function( $sections ){
      $sections.eq(0).bind( animationEndString, onAnimationEnd );
    },
    bindEvents = function(){
      $links.click( linkOnClick );
    };

  return {
      init: function(){
        declareElements();
        bindEvents();
      }
  }
})();

$(document).ready( function(){
  scrollLink.init();
});