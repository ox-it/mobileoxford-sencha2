Ext.Loader.setConfig
    enabled: true
    paths: { 'MobileOxford': 'app', }

Ext.application
    name: 'MobileOxford'
    controllers: ['home', 'webcams', 'transports',]
    stores: ['webcams',]
    models: ['webcam',]
    views: ['applist', 'dateriverbar', 'webcams', 'viewport', 'home']
    appFolder: 'app'
    profiles: ['phone', 'tablet']
