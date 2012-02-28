Ext.define 'MobileOxford.controller.webcams',
    extend: 'Ext.app.Controller'
    config:
        routes:
            'webcams': 'showWebcams'
            'webcams/:id': 'showWebcam'
        before:
            showWebcams: 'loadWebcams'

    loadWebcams: (action) ->
        action.resume()

    showWebcams: ->
        Ext.Viewport.add({xtype: 'webcams'})

    showWebcam: (id) ->
        # todo

