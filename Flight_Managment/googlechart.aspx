<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="googlechart.aspx.cs" Inherits="Flight_Managment.googlechart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <%-- Here We need to write some js code for load google chart with database data --%>
    <script src="Scripts/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <script>
        var chartData; // globar variable for hold chart data
        google.load("visualization", "1", { packages: ["corechart"] });

        // Here We will fill chartData

        $(document).ready(function () {
            
            $.ajax({
                url: "GoogleChart.aspx/GetChartData",
                data: "",
                dataType: "json",
                type: "POST",
                contentType: "application/json; chartset=utf-8",
                success: function (data) {
                    chartData = data.d;
                },
                error: function () {
                    alert("Error loading data! Please try again.");
                }
            }).done(function () {
                // after complete loading data
                google.setOnLoadCallback(drawChart);
                drawChart();
            });
        });


        function drawChart() {
            var data = google.visualization.arrayToDataTable(chartData);

            var options = {
                title: "Company Performance Product Category Wise",
                pointSize: 5,
                seriesType:"bars",
                series: { 3: {type: "line"}}
            };

            var lineChart = new google.visualization.ComboChart(document.getElementById('chart_div'));
            lineChart.draw(data, options);

        }

    </script>



    <div id="chart_div" style="width:600px;height:400px">
        <%-- Here Chart Will Load --%>
    </div>
    </form>
</body>
</html>
