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
        #Ext.create 'MobileOxford.view.webcams'
        Ext.Viewport.add {xtype: 'webcams'}

    showWebcam: (id) ->
        Ext.Viewport.setMasked {message: "Wait!", xtype: 'loadmask'}
        url = 'http://m.ox.ac.uk/webcams/' + webcam + '/'
        Ext.data.JsonP.request {
            url: url
            callbackKey: 'callback'
            params:
                format: 'js'
            timeout: 5000
            success: @onWebcamSuccess
            failure: @onWebcamFailure
            scope: @
        }

    onWebcamSuccess: (result) ->
        if result.eis?
            src = result.eis._url
            webcam = {}
            webcam.url = 'http://m.ox.ac.uk' . result.eis._url
            webcam.description = result.description
            webcam.credit = result.credit
            @getViewport.push webcam
        else
            @onWebcamFailure result

    onWebcamFailure: (result) ->
        alert 'Sorry, an error has occured while retrieving webcam\'s details.'
        @redirectTo 'webcams'
        Ext.Viewport.setMasked false

