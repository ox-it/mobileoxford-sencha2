Ext.define 'MobileOxford.controller.transports',
    extend: 'Ext.app.Controller'
    config:
        routes:
            'transports': 'showTransportMeans'
            'transports/park-and-rides': 'showParkAndRides'
            'transports/train-station': 'showTrainStation'
            'transports/bus': 'showBuses'
            'transports/bus/:stop': 'showBusStop'
        refs:
            viewport: '#viewport'
            transportsList: 'transportslist list'
        control:
            transportsList:
                itemtap: 'onMeansListItemTap'


    onMeansListItemTap: (list, index, item, record, evt, options) ->
        @redirectTo record.data.path

    showTransportMeans: ->
        view = Ext.create 'MobileOxford.view.transportslist'
        @getViewport().setActiveItem view

    showParkAndRides: ->
        Ext.Viewport.setMasked {message: 'Wait!', xtype: 'loadmask'}
        Ext.data.JsonP.request {
            url: 'http://m.ox.ac.uk/transport/park-and-ride/'
            callbackKey: 'callback'
            params:
                format: 'js'
            timeout: 2000
            success: @onParkAndRidesSuccess
            failure: @onParkAndRidesFailure
            scope: @
        }

    showTrainStation: ->
        console.log 'TODO'

    showBuses: ->
        console.log 'TODO'

    showBusStop: (stop) ->
        console.log 'TODO'

    onParkAndRidesSuccess: (result) ->
        if result
            prs = []
            for pr in result.park_and_rides
                p = {}
                p.name = pr.title
                p.percentage = pr.metadata.park_and_ride.percentage
                p.space = pr.metadata.park_and_ride.space
                p.capacity = pr.metadata.park_and_ride.capacity
                prs.push p
            view = Ext.create 'MobileOxford.view.transportspr',
                data: prs
            @getViewport().setActiveItem view

            Ext.Viewport.setMasked false
        else
            @onParkAndRidesFailure result

    onParkAndRidesFailure: (result) ->
        alert 'Sorry, an error has occured while retrieving pr status.'
        @redirectTo 'transports'
        Ext.Viewport.setMasked false


