Ext.define 'MobileOxford.view.applist',
    extend: 'Ext.Panel'
    requires: [
        'Ext.dataview.List',
    ]
    xtype: 'applist'
    config:
        layout: 'fit'
        items: [
            {
                xtype: 'list'
                id: 'appList'
                store:
                    fields: ['name', 'path']
                    data: [
                        { name: 'Webcams', path: 'webcams' }
                        { name: 'Transport', path: 'transports' }
                        { name: 'Library', path: 'library' }
                    ]
                itemTpl: '{name}'
            }
            ]
