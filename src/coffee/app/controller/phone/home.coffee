Ext.define 'MobileOxford.controller.phone.home',
    extend: 'MobileOxford.controller.home'

    config:
        refs:
            list: '#appList'
        control:
            list:
                itemtap: 'showApp'

