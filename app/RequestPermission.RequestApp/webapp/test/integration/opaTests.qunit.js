sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'RequestPermission/RequestApp/test/integration/FirstJourney',
		'RequestPermission/RequestApp/test/integration/pages/RequestList',
		'RequestPermission/RequestApp/test/integration/pages/RequestObjectPage'
    ],
    function(JourneyRunner, opaJourney, RequestList, RequestObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('RequestPermission/RequestApp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRequestList: RequestList,
					onTheRequestObjectPage: RequestObjectPage
                }
            },
            opaJourney.run
        );
    }
);