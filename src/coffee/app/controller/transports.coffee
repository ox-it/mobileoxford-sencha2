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
        console.log 'TODO'

    showTrainStation: ->
        console.log 'TODO'

    showBuses: ->
        console.log 'TODO'

    showBusStop: (stop) ->
        console.log 'TODO'


