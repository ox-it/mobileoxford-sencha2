Ext.define 'MobileOxford.view.applist',
    extend: 'Ext.Panel'
    xtype: 'applist'
    config:
        layout: 'fit'
        items: [
            {
                xtype: 'list'
                store:
                    fields: ['name', 'path']
                    data: [
                        { name: 'Webcams', path: 'webcams' }
                        { name: 'Transport', path: 'transport' }
                        { name: 'Library', path: 'library' }
                    ]
                itemTpl: '{name}'
            }
            ]
