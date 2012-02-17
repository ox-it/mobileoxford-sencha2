Ext.define 'MobileOxford.view.applist',
    extend: 'Ext.Panel'
    xtype: 'applist'
    config:
        layout: 'fit'
        items: [
            {
                xtype: 'list'
                store:
                    fields: ['name',]
                    data: [
                        { name: 'Webcams' }
                        { name: 'Transport' }
                        { name: 'Library' }
                    ]
                itemTpl: '{name}'
            }
            ]
