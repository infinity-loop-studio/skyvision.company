module.exports = {
  mainpage: async (req, res) => {
    var
      MobileDetect = require('mobile-detect'),
      md = new MobileDetect(req.headers['user-agent']);
    if (req.headers.host === 'skyvision.company' && md.mobile() !== null) {
      res.redirect('https://m.skyvision.company');
    }
    let menuItem = await MenuItems.findOne({
      systemName: 'главная'
    });
    let positions = await sails.helpers.getModules.with({menuItemId: menuItem.id});
    return res.view('template/il_skyvision', {
      positions: positions
    });
  },
  oneParam: async (req, res) => {
    let menuItem = await MenuItems.findOne({
      systemName: req.param('param1')
    });
    let positions = await sails.helpers.getModules.with({menuItemId: menuItem.id});
    return res.view('template/il_skyvision', {
      positions: positions
    });
  }
};

