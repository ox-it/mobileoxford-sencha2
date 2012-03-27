Ext.define 'MobileOxford.view.favourites',
    extend: 'Ext.Panel'
    requires: [
        'Ext.dataview.List',
    ]
    xtype: 'favouriteslist'
    config:
        #left: 0
        #top: 0
        #modal: true
        #hideOnMaskTap: true
        layout: 'fit'
        items: [
            {
                xtype: 'list'
                store: 'favourites'
                itemTpl: '{name}'
            }
            {
                xtype: 'button'
                text: 'Add current page as favourite'
            }
        ]
