Ext.define 'MobileOxford.view.transportspr',
    extend: 'Ext.Container'
    xtype: 'transportspr'
    title: 'Park and Rides'
    config:
        title: 'Park and Rides'
        layout: 'fit'
        tpl: '<tpl for="."><div>{name}, {spaces}, {capacity}, {percentage}%</div></tpl>'

