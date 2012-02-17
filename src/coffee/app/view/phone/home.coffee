Ext.define 'MobileOxford.view.phone.home',
    extend: 'Ext.Panel'
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
                        xtype: 'container'
                        layout: 'hbox'
                        items: [
                            {
                                html: 'Friday, 5th week, Hilary 2012 (17 Feb)'
                            }
                            {
                                xtype: 'spacer'
                            }
                            {   
                                html: 'Isis OK, Godstow OK'
                            }
                        ]
                        flex: 1
                    }
                    {
                        xtype: 'applist'
                        flex: 12
                    }

                ]
            }
        ]

