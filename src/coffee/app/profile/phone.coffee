Ext.define 'MobileOxford.profile.phone',
    extend: 'Ext.app.Profile'
    config:
        name: 'Phone'
        namespace: 'phone'
        controllers: ['home',]
        views: ['viewport', ]

    isActive: ->
        return true
        #return Ext.os.is.phone;

    launch: ->
        Ext.create 'MobileOxford.view.phone.viewport'
