<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <title>Novelty Widgets</title>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.js"></script>
  <style id="compiled-css" type="text/css">
    #chartDiv2 {
      height: 50vh;

    }

    #chartdiv1 {
      position: relative;
      background-image: url('gauge2.png');
      background-size: contain;
      background-position-x: 22%;
      background-repeat: no-repeat;

    }


    #toggle-button:hover {

      cursor: pointer;
      /* change the cursor to a pointer on hover */
    }

    #toggle-button img {
      width: 25px;
      height: 25px;

    }

    #toggle-button:hover img {
      width: 20px;
      height: 20px;
    }

    #toggle-button {
      background-color: black;
      font-size: 10px;
      color: #fff;
      width: 40px;
      height: 40px;
      border-radius: 25px;
      /* makes the button circular */

      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }
  </style>
  <style id="compiled-css" type="text/css">
    body {
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
    }



    /* EOS */
  </style>

</head>

<body>




  <div style="padding-top: 20px;">

  </div>

  <div id="noveltywidgets" style="padding-left: 2%">

    <div style="max-width: 400px;padding-left: 2%
    " id="chartdiv1">

      <canvas id="pointer" style="z-index: 1;"></canvas>

      <script>

        var gaugeCanvas = document.getElementById("pointer");
        var gaugeCtx = gaugeCanvas.getContext("2d");

        var pointerCanvas = document.getElementById("pointer");
        var pointerCtx = pointerCanvas.getContext("2d");
        var gaugeX = 20;
        var gaugeY = 20;
        var gaugeWidth = 200;
        var gaugeHeight = 20;
        var pointerWidth = 1;
        var pointerHeight = 6;
        var pointerY = gaugeY - pointerHeight;
        var minValue = 0;
        var maxValue = 100;
        var currentValue = Number(localStorage.getItem("pointer_position")) || 30;
        var intervalId;
        var prevPosition = 0;
        pointerCanvas.width = gaugeCanvas.width;
        pointerCanvas.height = gaugeCanvas.height;



        function drawGauge() {
          gaugeCtx.clearRect(0, 0, gaugeCanvas.width, gaugeCanvas.height);
          var gradient = gaugeCtx.createLinearGradient(gaugeX, gaugeY, gaugeX + gaugeWidth, gaugeY);
          gradient.addColorStop(0, "#880808");
          gradient.addColorStop(0.1, "#880808");
          gradient.addColorStop(0.1, "#FFA500");
          gradient.addColorStop(0.4, "#FFA500");
          gradient.addColorStop(0.4, "yellow");
          gradient.addColorStop(0.6, "yellow");
          gradient.addColorStop(0.6, "#00ff00");
          gradient.addColorStop(0.9, "#00ff00");
          gradient.addColorStop(0.9, "yellow");
          gradient.addColorStop(0.95, "yellow");
          gradient.addColorStop(0.95, "#880808");
          gradient.addColorStop(1, "#880808");
          gaugeCtx.fillStyle = gradient;
          gaugeCtx.fillRect(gaugeX, gaugeY, gaugeWidth, gaugeHeight);
        }

        function setPointerPosition(value) {
          pointerCtx.clearRect(0, 0, pointerCanvas.width, pointerCanvas.height);
          prevPosition = (gaugeWidth * (currentValue - minValue)) / (maxValue - minValue);
          currentValue = value;
          var position = (gaugeWidth * (value - minValue)) / (maxValue - minValue);
          pointerCtx.strokeStyle = "black";
          pointerCtx.beginPath();
          pointerCtx.moveTo(gaugeX + position, pointerY);
          pointerCtx.lineTo(gaugeX + position, gaugeY + gaugeHeight + pointerHeight);
          pointerCtx.lineWidth = pointerWidth;
          pointerCtx.stroke();
          localStorage.setItem("pointer_position", value);
        }

        function movePointer() {
          if (currentValue < minValue) {
            clearInterval(intervalId);
            return;
          }
          setPointerPosition(currentValue - 1);
        }

        intervalId = setInterval(movePointer, 1000);

        var pythondata = JSON.parse(pythondata);
        console.log(pythondata.soc)

        switch (pythondata.soc) {
          case 'Acceptence':
            if ((currentValue + 10) < 100) { setPointerPosition(currentValue + 10); }
            else { setPointerPosition(101) }
            break;
          case 'Elicitation':
            if ((currentValue + 20) < 100) { setPointerPosition(currentValue + 20); }
            else { setPointerPosition(101) }
            break;
          case 'Integration':
            if ((currentValue + 30) < 100) { setPointerPosition(currentValue + 30); }
            else { setPointerPosition(101) }
            break;
          case 'Conflict':
            if ((currentValue + 50) < 100) { setPointerPosition(currentValue + 50); }
            else { setPointerPosition(101) }
            break;
          default:
            setPointerPosition(currentValue);
            break;
        }
      </script>
    </div>
    <div style="max-width: 300px;padding-left: 1%;
  " id="chartdiv2">
      <canvas id="myChart" width="100" height="50"></canvas>

      <script>

        // Get the canvas element and its context
        var ctx = document.getElementById('myChart').getContext('2d');

        var chartData = {
          labels: ['Self-Attribution', 'Parents Attribution', 'Teachers Attribution', 'Re-attribution Training', 'Attribution Cause'],
          datasets: [{
            label: '',
            data: [0, 0, 0, 0, 0],
            backgroundColor: '#2596be',
            borderWidth: 1
          }]
        };

        // Check for individual data values in local storage and set them if available, else set to 0
        if (localStorage.getItem("selfAttribution")) {
          chartData.datasets[0].data[0] = parseInt(localStorage.getItem("selfAttribution"));
        } else {
          chartData.datasets[0].data[0] = 0;
        }

        if (localStorage.getItem("parentsAttribution")) {
          chartData.datasets[0].data[1] = parseInt(localStorage.getItem("parentsAttribution"));
        } else {
          chartData.datasets[0].data[1] = 0;
        }

        if (localStorage.getItem("teachersAttribution")) {
          chartData.datasets[0].data[2] = parseInt(localStorage.getItem("teachersAttribution"));
        } else {
          chartData.datasets[0].data[2] = 0;
        }

        if (localStorage.getItem("reAttributionTraining")) {
          chartData.datasets[0].data[3] = parseInt(localStorage.getItem("reAttributionTraining"));
        } else {
          chartData.datasets[0].data[3] = 0;
        }

        if (localStorage.getItem("attributionCause")) {
          chartData.datasets[0].data[4] = parseInt(localStorage.getItem("attributionCause"));
        } else {
          chartData.datasets[0].data[4] = 0;
        }

        // Define the chart options
        var options = {
          tooltips: { enabled: false },
          hover: { animationduration: 0 },
          legend: {
            display: false
          },
          maintainAspectRatio: true,
          scales: {
            xAxes: [{
              display: false,
              gridLines: {
                display: false
              },
              ticks: {
                beginAtZero: true,
                max: 100
              }
            }],
            yAxes: [{
              gridLines: {
                display: false
              },
              ticks: {
                beginAtZero: true
              }
            }]
          }
        };

        // Create the chart
        var myChart = new Chart(ctx, {
          type: 'horizontalBar',
          data: chartData,
          options: options
        });

        function updateData(pythondata2) {
          // Check if the data is stored in local storage and retrieve it
          var storedData = JSON.parse(localStorage.getItem('chartDataValues')) || [0, 0, 0, 0, 0];

          // Update the chart data values with the stored values or default values
          chartData.datasets[0].data = storedData;

          if (pythondata2.self === 'True' && chartData.datasets[0].data[0] <= 100) {
            if (chartData.datasets[0].data[0] < 50) { chartData.datasets[0].data[0] += 10; }
            else if (chartData.datasets[0].data[0] < 60) { chartData.datasets[0].data[0] += 5; }
            else if (chartData.datasets[0].data[0] < 70) { chartData.datasets[0].data[0] += 2; }
            else if (chartData.datasets[0].data[0] < 80) { chartData.datasets[0].data[0] += 1; }
            else if (chartData.datasets[0].data[0] < 90) { chartData.datasets[0].data[0] += 0.50; }
            else if (chartData.datasets[0].data[0] < 100) { chartData.datasets[0].data[0] += 0.25; }
            myChart.update();
          }
          if (pythondata2.parents === 'True' && chartData.datasets[0].data[1] <= 100) {
            if (chartData.datasets[0].data[1] < 50) { chartData.datasets[0].data[1] += 10; }
            else if (chartData.datasets[0].data[1] < 60) { chartData.datasets[0].data[1] += 5; }
            else if (chartData.datasets[0].data[1] < 70) { chartData.datasets[0].data[1] += 2; }
            else if (chartData.datasets[0].data[1] < 80) { chartData.datasets[0].data[1] += 1; }
            else if (chartData.datasets[0].data[1] < 90) { chartData.datasets[0].data[1] += 0.50; }
            else if (chartData.datasets[0].data[1] < 100) { chartData.datasets[0].data[1] += 0.25; }
            myChart.update();
          }
          if (pythondata2.teacher === 'True' && chartData.datasets[0].data[2] <= 100) {
            if (chartData.datasets[0].data[2] <= 50) { chartData.datasets[0].data[2] += 10; }
            else if (chartData.datasets[0].data[2] < 60) { chartData.datasets[0].data[2] += 5; }
            else if (chartData.datasets[0].data[2] < 70) { chartData.datasets[0].data[2] += 2; }
            else if (chartData.datasets[0].data[2] < 80) { chartData.datasets[0].data[2] += 1; }
            else if (chartData.datasets[0].data[2] < 90) { chartData.datasets[0].data[2] += 0.50; }
            else if (chartData.datasets[0].data[2] < 100) { chartData.datasets[0].data[2] += 0.25; }
            myChart.update();
          }
          if (pythondata2.re === 'True' && chartData.datasets[0].data[3] <= 100) {
            if (chartData.datasets[0].data[3] <= 50) { chartData.datasets[0].data[3] += 10; }
            else if (chartData.datasets[0].data[3] < 60) { chartData.datasets[0].data[3] += 5; }
            else if (chartData.datasets[0].data[3] < 70) { chartData.datasets[0].data[3] += 2; }
            else if (chartData.datasets[0].data[3] < 80) { chartData.datasets[0].data[3] += 1; }
            else if (chartData.datasets[0].data[3] < 90) { chartData.datasets[0].data[3] += 0.50; }
            else if (chartData.datasets[0].data[3] < 100) { chartData.datasets[0].data[3] += 0.25; }
            myChart.update();
          }
          if (pythondata2.cause === 'True' && chartData.datasets[0].data[4] <= 100) {
            if (chartData.datasets[0].data[4] <= 50) { chartData.datasets[0].data[4] += 10; }
            else if (chartData.datasets[0].data[4] < 60) { chartData.datasets[0].data[4] += 5; }
            else if (chartData.datasets[0].data[4] < 70) { chartData.datasets[0].data[4] += 2; }
            else if (chartData.datasets[0].data[4] < 80) { chartData.datasets[0].data[4] += 1; }
            else if (chartData.datasets[0].data[4] < 90) { chartData.datasets[0].data[4] += 0.50; }
            else if (chartData.datasets[0].data[4] < 100) { chartData.datasets[0].data[4] += 0.25; }
            myChart.update();
          }
          myChart.update();
          // Store the updated chart data values in local storage
          localStorage.setItem('chartDataValues', JSON.stringify(chartData.datasets[0].data));
          console.log(localStorage.chartDataValues)
        }


        var pythondata2 = JSON.parse(pythondata2);
        updateData(pythondata2);

      </script>

    </div>
  </div>

  <script>

    const button = document.getElementById("toggle-button");
    const noveltywidgets = document.getElementById("noveltywidgets");

    button.addEventListener("click", function () {
      if (noveltywidgets.style.display === "none") {
        noveltywidgets.style.display = "block";
      } else {
        noveltywidgets.style.display = "none";
      }
    });

  </script>
</body>

</html>