# Below is the configuration of the main view.
# Each controller should manage navigation bar and 
# main panel using their IDs

#Ext.define 'MobileOxford.view.phone.viewport',
#    extend: 'MobileOxford.view.viewport'
#    requires: [
#        'MobileOxford.view.home',
#    ]
#    id: 'viewport'
#    config:
#        layout: 'card'
#        fullscreen: true
#        items: [
#            {
#                xtype: 'home'
#            }
#        ]
#

Ext.define 'MobileOxford.view.phone.viewport',
    extend: 'MobileOxford.view.viewport'
    requires: [
        'MobileOxford.view.home',
    ]
    id: 'viewport'
    config:
        layout:
            type: 'card'
            animation:
                type: 'slide'
                direction: 'left'
                duration: 250
        fullscreen: true
        items: [
                    {
                        xtype: 'titlebar'
                        id: 'mainNav'
                        docked: 'top'
                        items: [
                            {
                                html: 'MOX'
                                align: 'left'
                            }
                            {
                                text: 'Favs'
                                xtype: 'button'
                                id: 'favsButton'
                                align: 'right'
                            }
                            {
                                text: 'Search'
                                align: 'right'
                            }
                        ]
                    }
                    {
                        xtype: 'home'
                    }
                ]

