<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>Connect Plus</title>
    <!-- plugins:css -->
    <link
      rel="stylesheet"
      href="/seller/sellers/main/assets/vendors/mdi/css/materialdesignicons.min.css"
    />
    <link
      rel="stylesheet"
      href="/seller/sellers/main/assets/vendors/flag-icon-css/css/flag-icon.min.css"
    />
    <link rel="stylesheet" href="/seller/sellers/main/assets/vendors/css/vendor.bundle.base.css" />
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link
      rel="stylesheet"
      href="/seller/sellers/main/assets/vendors/font-awesome/css/font-awesome.min.css"
    />
    <link
      rel="stylesheet"
      href="/seller/sellers/main/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css"
    />
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="/seller/sellers/main/assets/css/style.css" />
    <!-- End layout styles -->
    <link rel="shortcut icon" href="/seller/sellers/main/assets/images/favicon.png" />
    <script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
    <script type="text/javascript">
    $(function() {
    	  /* ChartJS
    	   * -------
    	   * Data and config for chartjs
    	   */
    	  'use strict';
    	  var data = {
    	    labels: ["1월", "2", "3", "4", "5", "6","7","8","9","10","11","12"],
    	    datasets: [{
    	      label: '매출',
    	      data: [10, 19, 3, 5, 2, 3, 6,8,1,2,54,4],
    	      backgroundColor: [
    	        'rgba(255, 99, 132, 0.2)',
    	        'rgba(54, 162, 235, 0.2)',
    	        'rgba(255, 206, 86, 0.2)',
    	        'rgba(75, 192, 192, 0.2)',
    	        'rgba(153, 102, 255, 0.2)',
    	        'rgba(255, 159, 64, 0.2)',
    	        'rgba(187, 225, 230, 0.2)',
    	        'rgba(241, 52, 185, 0.2)',
    	        'rgba(23, 119, 146, 0.2)',
    	        'rgba(174, 200, 97, 0.2)',
    	        'rgba(157, 126, 49, 0.2)',
    	        'rgba(230, 249, 113, 0.2)'
    	      ],
    	      borderColor: [
    	        'rgba(255,99,132,1)',
    	        'rgba(54, 162, 235, 1)',
    	        'rgba(255, 206, 86, 1)',
    	        'rgba(75, 192, 192, 1)',
    	        'rgba(153, 102, 255, 1)',
    	        'rgba(255, 159, 64, 1)',
    	        'rgba(187, 225, 230, 1)',
    	        'rgba(241, 52, 185, 1)',
    	        'rgba(23, 119, 146, 1)',
    	        'rgba(174, 200, 97, 1)',
    	        'rgba(157, 126, 49, 1)',
    	        'rgba(230, 249, 113, 1)'
    	      ],
    	      borderWidth: 1,
    	      fill: false
    	    }]
    	  };
    	  var multiLineData = {
    	    labels: ["Red", "Blue", "Yellow", "Green", "Connect Plus", "Orange"],
    	    datasets: [{
    	        label: 'Dataset 1',
    	        data: [12, 19, 3, 5, 2, 3],
    	        borderColor: [
    	          '#587ce4'
    	        ],
    	        borderWidth: 2,
    	        fill: false
    	      },
    	      {
    	        label: 'Dataset 2',
    	        data: [5, 23, 7, 12, 42, 23],
    	        borderColor: [
    	          '#ede190'
    	        ],
    	        borderWidth: 2,
    	        fill: false
    	      },
    	      {
    	        label: 'Dataset 3',
    	        data: [15, 10, 21, 32, 12, 33],
    	        borderColor: [
    	          '#f44252'
    	        ],
    	        borderWidth: 2,
    	        fill: false
    	      }
    	    ]
    	  };
    	  var options = {
    	    scales: {
    	      yAxes: [{
    	        ticks: {
    	          beginAtZero: true
    	        }
    	      }]
    	    },
    	    legend: {
    	      display: false
    	    },
    	    elements: {
    	      point: {
    	        radius: 0
    	      }
    	    }

    	  };
    	  var doughnutPieData = {
    	    datasets: [{
    	      data: [30, 40, 30],
    	      backgroundColor: [
    	        'rgba(255, 99, 132, 0.5)',
    	        'rgba(54, 162, 235, 0.5)',
    	        'rgba(255, 206, 86, 0.5)',
    	        'rgba(75, 192, 192, 0.5)',
    	        'rgba(153, 102, 255, 0.5)',
    	        'rgba(255, 159, 64, 0.5)'
    	      ],
    	      borderColor: [
    	        'rgba(255,99,132,1)',
    	        'rgba(54, 162, 235, 1)',
    	        'rgba(255, 206, 86, 1)',
    	        'rgba(75, 192, 192, 1)',
    	        'rgba(153, 102, 255, 1)',
    	        'rgba(255, 159, 64, 1)'
    	      ],
    	    }],

    	    // These labels appear in the legend and in the tooltips when hovering different arcs
    	    labels: [
    	      'Pink',
    	      'Blue',
    	      'Yellow',
    	    ]
    	  };
    	  var doughnutPieOptions = {
    	    responsive: true,
    	    animation: {
    	      animateScale: true,
    	      animateRotate: true
    	    }
    	  };
    	  var areaData = {
    	    labels: ["2013", "2014", "2015", "2016", "2017"],
    	    datasets: [{
    	      label: '# of Votes',
    	      data: [12, 19, 3, 5, 2, 3],
    	      backgroundColor: [
    	        'rgba(255, 99, 132, 0.2)',
    	        'rgba(54, 162, 235, 0.2)',
    	        'rgba(255, 206, 86, 0.2)',
    	        'rgba(75, 192, 192, 0.2)',
    	        'rgba(153, 102, 255, 0.2)',
    	        'rgba(255, 159, 64, 0.2)'
    	      ],
    	      borderColor: [
    	        'rgba(255,99,132,1)',
    	        'rgba(54, 162, 235, 1)',
    	        'rgba(255, 206, 86, 1)',
    	        'rgba(75, 192, 192, 1)',
    	        'rgba(153, 102, 255, 1)',
    	        'rgba(255, 159, 64, 1)'
    	      ],
    	      borderWidth: 1,
    	      fill: true, // 3: no fill
    	    }]
    	  };

    	  var areaOptions = {
    	    plugins: {
    	      filler: {
    	        propagate: true
    	      }
    	    }
    	  }

    	  var multiAreaData = {
    	    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
    	    datasets: [{
    	        label: 'Facebook',
    	        data: [8, 11, 13, 15, 12, 13, 16, 15, 13, 19, 11, 14],
    	        borderColor: ['rgba(255, 99, 132, 0.5)'],
    	        backgroundColor: ['rgba(255, 99, 132, 0.5)'],
    	        borderWidth: 1,
    	        fill: true
    	      },
    	      {
    	        label: 'Twitter',
    	        data: [7, 17, 12, 16, 14, 18, 16, 12, 15, 11, 13, 9],
    	        borderColor: ['rgba(54, 162, 235, 0.5)'],
    	        backgroundColor: ['rgba(54, 162, 235, 0.5)'],
    	        borderWidth: 1,
    	        fill: true
    	      },
    	      {
    	        label: 'Linkedin',
    	        data: [6, 14, 16, 20, 12, 18, 15, 12, 17, 19, 15, 11],
    	        borderColor: ['rgba(255, 206, 86, 0.5)'],
    	        backgroundColor: ['rgba(255, 206, 86, 0.5)'],
    	        borderWidth: 1,
    	        fill: true
    	      }
    	    ]
    	  };

    	  var multiAreaOptions = {
    	    plugins: {
    	      filler: {
    	        propagate: true
    	      }
    	    },
    	    elements: {
    	      point: {
    	        radius: 0
    	      }
    	    },
    	    scales: {
    	      xAxes: [{
    	        gridLines: {
    	          display: false
    	        }
    	      }],
    	      yAxes: [{
    	        gridLines: {
    	          display: false
    	        }
    	      }]
    	    }
    	  }

    	  var scatterChartData = {
    	    datasets: [{
    	        label: 'First Dataset',
    	        data: [{
    	            x: -10,
    	            y: 0
    	          },
    	          {
    	            x: 0,
    	            y: 3
    	          },
    	          {
    	            x: -25,
    	            y: 5
    	          },
    	          {
    	            x: 40,
    	            y: 5
    	          }
    	        ],
    	        backgroundColor: [
    	          'rgba(255, 99, 132, 0.2)'
    	        ],
    	        borderColor: [
    	          'rgba(255,99,132,1)'
    	        ],
    	        borderWidth: 1
    	      },
    	      {
    	        label: 'Second Dataset',
    	        data: [{
    	            x: 10,
    	            y: 5
    	          },
    	          {
    	            x: 20,
    	            y: -30
    	          },
    	          {
    	            x: -25,
    	            y: 15
    	          },
    	          {
    	            x: -10,
    	            y: 5
    	          }
    	        ],
    	        backgroundColor: [
    	          'rgba(54, 162, 235, 0.2)',
    	        ],
    	        borderColor: [
    	          'rgba(54, 162, 235, 1)',
    	        ],
    	        borderWidth: 1
    	      }
    	    ]
    	  }

    	  var scatterChartOptions = {
    	    scales: {
    	      xAxes: [{
    	        type: 'linear',
    	        position: 'bottom'
    	      }]
    	    }
    	  }
    	  // Get context with jQuery - using jQuery's .get() method.
    	  if ($("#barChart").length) {
    	    var barChartCanvas = $("#barChart").get(0).getContext("2d");
    	    // This will get the first returned node in the jQuery collection.
    	    var barChart = new Chart(barChartCanvas, {
    	      type: 'bar',
    	      data: data,
    	      options: options
    	    });
    	  }

    	  if ($("#lineChart").length) {
    	    var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
    	    var lineChart = new Chart(lineChartCanvas, {
    	      type: 'line',
    	      data: data,
    	      options: options
    	    });
    	  }

    	  if ($("#linechart-multi").length) {
    	    var multiLineCanvas = $("#linechart-multi").get(0).getContext("2d");
    	    var lineChart = new Chart(multiLineCanvas, {
    	      type: 'line',
    	      data: multiLineData,
    	      options: options
    	    });
    	  }

    	  if ($("#areachart-multi").length) {
    	    var multiAreaCanvas = $("#areachart-multi").get(0).getContext("2d");
    	    var multiAreaChart = new Chart(multiAreaCanvas, {
    	      type: 'line',
    	      data: multiAreaData,
    	      options: multiAreaOptions
    	    });
    	  }

    	  if ($("#doughnutChart").length) {
    	    var doughnutChartCanvas = $("#doughnutChart").get(0).getContext("2d");
    	    var doughnutChart = new Chart(doughnutChartCanvas, {
    	      type: 'doughnut',
    	      data: doughnutPieData,
    	      options: doughnutPieOptions
    	    });
    	  }

    	  if ($("#pieChart").length) {
    	    var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
    	    var pieChart = new Chart(pieChartCanvas, {
    	      type: 'pie',
    	      data: doughnutPieData,
    	      options: doughnutPieOptions
    	    });
    	  }

    	  if ($("#areaChart").length) {
    	    var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
    	    var areaChart = new Chart(areaChartCanvas, {
    	      type: 'line',
    	      data: areaData,
    	      options: areaOptions
    	    });
    	  }

    	  if ($("#scatterChart").length) {
    	    var scatterChartCanvas = $("#scatterChart").get(0).getContext("2d");
    	    var scatterChart = new Chart(scatterChartCanvas, {
    	      type: 'scatter',
    	      data: scatterChartData,
    	      options: scatterChartOptions
    	    });
    	  }

    	  if ($("#browserTrafficChart").length) {
    	    var doughnutChartCanvas = $("#browserTrafficChart").get(0).getContext("2d");
    	    var doughnutChart = new Chart(doughnutChartCanvas, {
    	      type: 'doughnut',
    	      data: browserTrafficData,
    	      options: doughnutPieOptions
    	    });
    	  }
    	});
    </script>

  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
     <%@ include file="/WEB-INF/views/include/seller/header.jsp" %>


        <!-- 화면부분 -->
        <div class="main-panel">
          <div class="content-wrapper">
            <h3>판매자 메인화면</h3>
          </div>
         
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <%@ include file="/WEB-INF/views/include/seller/footer.html" %>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="/seller/sellers/main/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="/seller/sellers/main/assets/vendors/chart.js/Chart.min.js"></script>
    <script src="/seller/sellers/main/assets/vendors/jquery-circle-progress/js/circle-progress.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="/seller/sellers/main/assets/js/off-canvas.js"></script>
    <script src="/seller/sellers/main/assets/js/hoverable-collapse.js"></script>
    <script src="/seller/sellers/main/assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="/seller/sellers/main/assets/js/dashboard.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>
