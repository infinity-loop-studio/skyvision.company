module.exports.routes = {
  '/': 'LanguageController.setLanguage',
  '/:language': 'PageController.mainpage',
  '/:language/:param1': 'PageController.oneParam'
};
