Ext.define 'MobileOxford.view.transportslist',
    extend: 'Ext.Panel'
    requires: [
        'Ext.dataview.List',
    ]
    xtype: 'transportslist'
    config:
        layout: 'fit'
        items: [
            {
                xtype: 'list'
                store:
                    fields: ['name', 'path']
                    data: [
                        { name: 'Buses', path: 'transports/bus' }
                        { name: 'Rail station', path: 'transports/train-station' }
                        { name: 'Park and rides', path: 'transports/park-and-rides' }
                    ]
                itemTpl: '{name}'
            }
            ]
