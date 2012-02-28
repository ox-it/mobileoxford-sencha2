# Below is the configuration of the main view.
# Each controller should manage navigation bar and 
# main panel using their IDs

Ext.define 'MobileOxford.view.phone.viewport',
    extend: 'MobileOxford.view.viewport'
    config:
        layout: 'card'
        fullscreen: true
        items: [
            {
                xtype: 'titlebar'
                docked: 'top'
                id: 'mainNav'
                items: [
                    {
                        html: 'MOX'
                        align: 'left'
                    }
                    {
                        text: 'Favs'
                        align: 'right'
                    }
                    {
                        text: 'Search'
                        align: 'right'
                    }
                ]
            },
            {
                xtype: 'container'
                layout: 'vbox'
                id: 'mainPanel'
                items: [
                    {
                        xtype: 'dateriverbar'
                        flex: 1
                    }
                    {
                        xtype: 'applist'
                        flex: 12
                    }
                ]
            }
        ]

