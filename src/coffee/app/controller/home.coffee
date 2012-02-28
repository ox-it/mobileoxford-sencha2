Ext.define 'MobileOxford.controller.home',
    extend: 'Ext.app.Controller'
    config:
        refs:
            list: '#appList'
        control:
            list:
                itemtap: 'showApp'

    showApp: (list, index, item, evt) ->
        path = list.getStore().getAt(index).get('path')
        console.log("redirect to app #{ path }")
        @redirectTo(path)
