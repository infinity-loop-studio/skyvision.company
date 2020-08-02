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
        '<li >' +
        '<div>' +
        '<img src="' + slide.image + '" alt="" uk-cover>' +
        '<div class="uk-position-cover uk-overlay-primary uk-text-center">' +
        '<div class="uk-position-bottom">' +
        '<h1>Уселители 3G | 4G | GSM</h1>' +
        '<p class="description">Дополнительная услуга для тех кому важна максимально качественная мобильная связь и 3G и 4G интернет. ' +
        '<br>' +
        'Наше оборудование, значительно улучшит уровень сигнала мобильного оператора, в вашей местности.' +
        '</p>' +
        '<p>' +
        '<a href="/" class="uk-button uk-button-danger">Перейти в раздел</a>' +
        '</p>' +
        '</div>' +
        '</div>' +
        '</div>' +
        '</li>';
    }


    let body = '' +
      '<div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slideshow="ratio: 1920:1200; animation: push">' +
      '<ul class="uk-slideshow-items">' +
      '' + parsedSlides +
      '</ul>' +
      '' +
      '<a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>' +
      '<a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>' +
      '</div>';
    return exits.success(body);
  }
};

