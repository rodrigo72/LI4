function updateProgressBar(startDateTimeTicks, queueTimeInMinutes) {
    var progressBar = document.getElementById("progress-bar");
    var timeRemainingElement = document.getElementById("time-remaining");

    // converting C# ticks to JS milliseconds
    var startTimestamp = startDateTimeTicks / 10000 - 62135596800000; // Difference in starting points
    var duration = queueTimeInMinutes * 60 * 1000;
    var startTime = startTimestamp + duration;

    function update() {
        var currentTime = new Date().getTime();
        var remainingTime = startTime - currentTime;

        if (remainingTime > 0) {
            var progress = ((duration - remainingTime) / duration) * 100;
            progressBar.style.width = progress + "%";

            var minutes = Math.floor(remainingTime / (60 * 1000));
            var seconds = Math.floor((remainingTime % (60 * 1000)) / 1000);

            timeRemainingElement.innerHTML = "Time Remaining: " + minutes + "m " + seconds + "s";

            requestAnimationFrame(update);
        } else {
            progressBar.style.width = "100%";
            progressBar.innerHTML = "Time's up!";
            timeRemainingElement.innerHTML = "Time Remaining: 0m 0s";
        }
    }

    update();
}