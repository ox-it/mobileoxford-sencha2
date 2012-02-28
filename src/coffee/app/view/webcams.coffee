Ext.define 'MobileOxford.view.webcams',
    extend: 'Ext.Panel'
    xtype: 'webcams'
    title: 'Webcams'
    config:
        title: 'Webcams'
        layout: 'fit'
        items: [
            {
                xtype: 'list'
                id: 'webcamsList'
                loadingText: 'LOOOADING'
                store: 'webcams'
                itemTpl: '{title}'
            }
        ]

