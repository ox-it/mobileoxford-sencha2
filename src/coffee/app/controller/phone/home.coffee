Ext.define 'MobileOxford.controller.phone.home',
    extend: 'MobileOxford.controller.home'
    config:
        views: ['home',]
        refs:
            appList: '#appList'
            mainNav: '#mainNav'
            mainPanel: '#mainPanel'
            viewport: '#viewport'
        control:
            appList:
                itemtap: 'onAppListItemTap'
        routes:
            '': 'showHomePage'

    onAppListItemTap: (list, index, item, record, evt, options) ->
        @redirectTo record.data.path

    showHomePage: ->
        #@getViewport().push { xtype: 'home' }
        view = Ext.create 'MobileOxford.view.phone.home'
        @getViewport().setActiveItem view

