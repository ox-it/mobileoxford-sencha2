Ext.define 'MobileOxford.store.favourites',
    extend: 'Ext.data.Store'
    requires: [
        'Ext.data.proxy.LocalStorage',
    ]
    config:
        model: 'MobileOxford.model.favourite'
        autoLoad: true
        proxy:
            type: 'localstorage'
            id: 'mox-favourites'

