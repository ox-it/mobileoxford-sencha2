Ext.define 'MobileOxford.profile.tablet',
    extend: 'Ext.app.Profile'
    config:
        name: 'Tablet'
        namespace: 'tablet'
        controllers: []

    isActive: ->
        return false;

    launch: ->
        Ext.create('MobileOxford.view.phone.home');
