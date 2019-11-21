module.exports = {
  friendlyName: 'Get slideshow',
  description: '',
  inputs: {
    moduleId: {
      type: 'number',
      required: true
    }
  },
  exits: {
    success: {
      outputFriendlyName: 'Slideshow',
    },
  },
  fn: async function (inputs, exits) {
    let parsedSlides = '';
    let slides = await Slides.find({
      where: {
        moduleId: inputs.moduleId
      },
      sort: 'id ASC'
    });
    for (const slide of slides) {
      parsedSlides += '' +
        '<li>' +
        '<div class="uk-background-cover" uk-img data-src="' + slide.image + '" uk-cover uk-height-viewport>' +
        '<div class="uk-position-cover uk-overlay-primary uk-text-center">' +
        '<div class="uk-position-bottom">' +
        '<h1>' + slide.header +
        '</h1>' +
        '<p class="description">' + slide.description +
        '</p>' +
        '<p>' +
        '<a href="' + slide.link + '" class="uk-button uk-button-danger">Перейти в раздел' +
        '</a>' +
        '</p>' +
        '</div>' +
        '</div>' +
        '</li>';
    }
    let body = '' +
      '<div class="uk-inline uk-position-relative uk-height-viewport">' +
      '<div ' +
      'uk-height-viewport ' +
      'id="mainslideshow" ' +
      'class="uk-position-fixed uk-visible-toggle uk-light" ' +
      'tabindex="-1" ' +
      'uk-slideshow="animation: push; autoplay: true; autoplay-interval: 5000; pause-on-hover: false; ratio: 1920:1258">' +
      '<div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1">' +
      '<ul uk-height-viewport class="uk-slideshow-items">' +
      parsedSlides +
      '</ul>' +
      '</div>' +
      '<ul style="z-index: 1; margin-top: -64px; padding: 0 10px; " class="uk-position-center-right uk-list"><li style="cursor: pointer" status="play" id="slideshow_switcher"><i style="font-size: 19px" class="far fa-pause-circle"></i></li></ul>' +
      '<ul class="uk-slideshow-nav uk-dotnav uk-margin uk-position-center-right uk-display-block uk-padding-small"></ul>' +
      '</div>' +
      '</div>';
    return exits.success(body);
  }
};

