Ext.define 'MobileOxford.profile.tablet',
    extend: 'Ext.app.Profile'
    config:
        name: 'Tablet'
        namespace: 'tablet'
        controllers: []

    isActive: ->
        # not used atm
        return false

    launch: ->
        Ext.create('MobileOxford.view.phone.home')
