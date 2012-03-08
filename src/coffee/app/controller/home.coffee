Ext.define 'MobileOxford.controller.home',
    extend: 'Ext.app.Controller'

    config:
        views: ['viewport', 'applist',]
        refs:
            appList: 'applist'
            mainNav: '#mainNav'
            mainPanel: '#mainPanel'
        listeners:
            appList:
                itemtap: 'showApp'

