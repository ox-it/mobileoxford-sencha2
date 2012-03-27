Ext.define 'MobileOxford.controller.home',
    extend: 'Ext.app.Controller'

    config:
        refs:
            favs: '#favsButton'
        control:
            favs:
                tap: 'onFavsButtonTap'

    onFavsButtonTap: (button, event, options) ->
        favs = Ext.create 'MobileOxford.view.favourites'
        favs.showBy(@getFavs(), "tr-br")

