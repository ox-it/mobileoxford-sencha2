Ext.define 'MobileOxford.controller.webcams',
    extend: 'Ext.app.Controller'
    config:
        refs:
            mainNav: '#mainNav'
            mainPanel: '#mainPanel'
            webcamsList: '#webcamsList'
            viewport: '#viewport'
        control:
            webcamsList:
                itemtap: 'onWebcamsListItemTap'
        routes:
            'webcams': 'showWebcams'
            'webcams/:id': 'showWebcam'
        before:
            showWebcams: 'loadWebcams'

    loadWebcams: (action) ->
        # should ensure that webcams are loaded from mox
        action.resume()

    onWebcamsListItemTap: (list, index, item, record, evt, options) ->
        @redirectTo 'webcams/' + record.data.slug

    showWebcams: ->
        view = Ext.create 'MobileOxford.view.webcams'
        @getViewport().setActiveItem view
 
    showWebcam: (id) ->
        Ext.Viewport.setMasked {message: "Wait!", xtype: 'loadmask'}
        url = 'http://m.ox.ac.uk/webcams/' + id + '/'
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
            webcam.url = 'http://m.ox.ac.uk' + result.eis._url
            webcam.description = result.webcam.description
            webcam.credit = result.webcam.credit
           
            view = Ext.create 'MobileOxford.view.webcam'
            view.config.data = webcam
            @getViewport().setActiveItem view

            Ext.Viewport.setMasked false
        else
            @onWebcamFailure result

    onWebcamFailure: (result) ->
        alert 'Sorry, an error has occured while retrieving webcam\'s details.'
        @redirectTo 'webcams'
        Ext.Viewport.setMasked false

