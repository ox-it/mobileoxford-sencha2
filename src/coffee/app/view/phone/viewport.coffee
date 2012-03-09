# Below is the configuration of the main view.
# Each controller should manage navigation bar and 
# main panel using their IDs

Ext.define 'MobileOxford.view.phone.viewport',
    extend: 'MobileOxford.view.viewport'
    requires: [
        'MobileOxford.view.home',
    ]
    id: 'viewport'
    config:
        layout: 'card'
        fullscreen: true
        items: [
            {
                xtype: 'home'
            }
        ]

