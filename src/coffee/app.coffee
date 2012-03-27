Ext.Loader.setConfig
    enabled: true
    paths: { 'MobileOxford': 'app', }

Ext.application
    name: 'MobileOxford'
    controllers: ['home', 'webcams', 'transports',]
    stores: ['webcams', 'favourites']
    models: ['webcam', 'favourite']
    views: ['webcams', 'viewport', 'home', 'favourites']
    appFolder: 'app'
    profiles: ['phone', 'tablet']
