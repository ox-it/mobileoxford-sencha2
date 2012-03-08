Ext.define 'MobileOxford.controller.phone.home',
    extend: 'MobileOxford.controller.home'

    config:
        views: ['viewport', 'applist']
        refs:
            appList: '#applist'
            mainNav: '#mainNav'
            mainPanel: '#mainPanel'
        listeners:
            appList:
                itemtap: 'showApp'

    showApp: (list, index, item, record, evt, options) ->
        console.log 'redirecting to ' + record.path
        @redirectTo record.path

    init: () ->
        console.log Ext.ComponentQuery.query('#appList')
        console.log Ext.ComponentQuery.query('#mainNav')
        console.log @getMainNav()
        console.log @getMainPanel()
        console.log @getAppList()
