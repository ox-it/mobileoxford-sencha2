Ext.define 'MobileOxford.controller.transports',
    extend: 'Ext.app.Controller'
    config:
        routes:
            'transports': 'showTransportMeans'
            'transports/park-and-rides': 'showParkAndRides'
            'transports/train-station': 'showTrainStation'
            'transports/bus': 'showBuses'
            'transports/bus/:stop': 'showBusStop'


    onMeansListItemTap: (list, index, item, record, evt, options) ->
        @redirectTo 'transports/' + record.data.slug

    showTransportMeans: ->
        console.log 'TODO'

    showParkAndRides: ->
        console.log 'TODO'

    showTrainStation: ->
        console.log 'TODO'

    showBuses: ->
        console.log 'TODO'

    showBusStop: (stop) ->
        console.log 'TODO'


