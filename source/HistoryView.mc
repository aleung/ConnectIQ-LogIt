using Toybox.WatchUi;
using Toybox.Time;
using Toybox.Time.Gregorian;

class HistoryView extends WatchUi.View {

	var logEntries;

    function initialize(currentFeeds) {
        View.initialize();
        logEntries = currentFeeds;
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.HistoryLayout(dc));      
        updateLogLabels(9);
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
    
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

	function updateLogLabels(startingPoint) {
		
		for (var i=0;i<6;i++) {
            var intervalString = "";
            var timeString = "";

			if ((startingPoint - i) >= 0) {
                var time = logEntries.getTime(startingPoint-i);
                if (time != null) {
                    var greg = Gregorian.info(time, Time.FORMAT_MEDIUM);
                    timeString = Lang.format("$1$  $2$:$3$", [ greg.day_of_week, greg.hour.format("%02d"), greg.min.format("%02d") ]);
                }
                var interval = logEntries.getInterval(startingPoint-i);
                if (interval != null) {
                    intervalString = interval[:days] > 0
                        ? Lang.format("$1$d$2$h+", [interval[:days].format("%d"), interval[:hours].format("%d")]) :
                        : Lang.format("$1$h$2$m", [interval[:hours].format("%d"), interval[:minutes].format("%02d")]);
                }
            }

            View.findDrawableById("labelLogTime"+i).setText(timeString);
            if (i<5) {
              View.findDrawableById("labelLogInterval"+i).setText(intervalString);
            }
		}
		
		WatchUi.requestUpdate();
	
	}

}
