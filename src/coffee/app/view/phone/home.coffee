Ext.define 'MobileOxford.view.phone.home',
    extend: 'MobileOxford.view.home'
    xtype: 'home'
    requires: [
        'MobileOxford.view.applist',
        'MobileOxford.view.dateriverbar',
        'Ext.TitleBar',
    ]
    config:
        fullscreen: true
        layout:
            type: 'card'
            animation:
                type: 'slide'
                direction: 'left'
                duration: 250
        items: [
            {
                xtype: 'titlebar'
                docked: 'top'
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
            }
            {
                xtype: 'container'
                layout: 'vbox'
                items: [
                    {
                        xtype: 'dateriverbar'
                        flex: 1
                    }
                    {
                        xtype: 'applist'
                        id: 'appList'
                        flex: 12
                    }

                ]
            }
        ]

