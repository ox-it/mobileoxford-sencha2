Ext.Loader.setConfig
    enabled: true
    paths: { 'MobileOxford': 'app', }

Ext.application
    name: 'MobileOxford'
    controllers: ['webcams']
    stores: ['webcams',]
    models: ['webcam',]
    views: ['applist', 'dateriverbar', 'webcams']
    appFolder: 'app'
    profiles: ['phone', 'tablet']
