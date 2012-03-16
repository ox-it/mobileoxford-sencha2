Ext.define 'MobileOxford.view.webcam',
    extend: 'Ext.Container'
    xtype: 'webcam'
    title: 'Webcam'
    config:
        title: 'Webcam'
        layout: 'fit'
        data: { description: 'desc', credit: 'credit' }
        tpl: '<div><img height="90%" src="{url}" /></div><div>{description}</div><div>{credit}</div>'

