Ext.define 'MobileOxford.view.dateriverbar',
    extend: 'Ext.Container'
    xtype: 'dateriverbar'
    config:
        layout: 'hbox'
        items: [
            {
                html: 'Friday, 5th week...'
            }
            {
                xtype: 'spacer'
            }
            {
                html: 'Isis is OK'
            }
        ]
