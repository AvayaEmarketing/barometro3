<!DOCTYPE html >
<html>
<head>
    <link rel="stylesheet" href="demos.css" type="text/css" media="screen" />
    
    <script src="libraries/RGraph.common.core.js" ></script>
    <script src="libraries/RGraph.common.effects.js" ></script>
    <script src="libraries/RGraph.common.dynamic.js" ></script>
    <script src="libraries/RGraph.common.tooltips.js" ></script>
    <script src="libraries/RGraph.thermometer.js" ></script>
    <!--[if lt IE 9]><script src="../excanvas/excanvas.js"></script><![endif]-->
    
    <title>Certification Termometer</title>
    <style>
        body {
          margin: 0;
          font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
          font-size: 0.91em;
          line-height: 20px;
          color: #333333;
          background-color: #ffffff;
        }

                table .table {
  background-color: #ffffff;
}

.table-condensed th,
.table-condensed td {
  padding: 4px 5px;
}

.table-bordered {
  border: 1px solid #dddddd;
  border-collapse: separate;
  *border-collapse: collapse;
  border-left: 0;
  -webkit-border-radius: 4px;
     -moz-border-radius: 4px;
          border-radius: 4px;
}

.table-bordered th,
.table-bordered td {
  border-left: 1px solid #dddddd;
}

.table-bordered caption + thead tr:first-child th,
.table-bordered caption + tbody tr:first-child th,
.table-bordered caption + tbody tr:first-child td,
.table-bordered colgroup + thead tr:first-child th,
.table-bordered colgroup + tbody tr:first-child th,
.table-bordered colgroup + tbody tr:first-child td,
.table-bordered thead:first-child tr:first-child th,
.table-bordered tbody:first-child tr:first-child th,
.table-bordered tbody:first-child tr:first-child td {
  border-top: 0;
}

.table-bordered thead:first-child tr:first-child > th:first-child,
.table-bordered tbody:first-child tr:first-child > td:first-child,
.table-bordered tbody:first-child tr:first-child > th:first-child {
  -webkit-border-top-left-radius: 4px;
          border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
}

.table-bordered thead:first-child tr:first-child > th:last-child,
.table-bordered tbody:first-child tr:first-child > td:last-child,
.table-bordered tbody:first-child tr:first-child > th:last-child {
  -webkit-border-top-right-radius: 4px;
          border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
}

.table-bordered thead:last-child tr:last-child > th:first-child,
.table-bordered tbody:last-child tr:last-child > td:first-child,
.table-bordered tbody:last-child tr:last-child > th:first-child,
.table-bordered tfoot:last-child tr:last-child > td:first-child,
.table-bordered tfoot:last-child tr:last-child > th:first-child {
  -webkit-border-bottom-left-radius: 4px;
          border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
}

.table-bordered thead:last-child tr:last-child > th:last-child,
.table-bordered tbody:last-child tr:last-child > td:last-child,
.table-bordered tbody:last-child tr:last-child > th:last-child,
.table-bordered tfoot:last-child tr:last-child > td:last-child,
.table-bordered tfoot:last-child tr:last-child > th:last-child {
  -webkit-border-bottom-right-radius: 4px;
          border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
}

.table-bordered tfoot + tbody:last-child tr:last-child td:first-child {
  -webkit-border-bottom-left-radius: 0;
          border-bottom-left-radius: 0;
  -moz-border-radius-bottomleft: 0;
}

.table-bordered tfoot + tbody:last-child tr:last-child td:last-child {
  -webkit-border-bottom-right-radius: 0;
          border-bottom-right-radius: 0;
  -moz-border-radius-bottomright: 0;
}

.table-bordered caption + thead tr:first-child th:first-child,
.table-bordered caption + tbody tr:first-child td:first-child,
.table-bordered colgroup + thead tr:first-child th:first-child,
.table-bordered colgroup + tbody tr:first-child td:first-child {
  -webkit-border-top-left-radius: 4px;
          border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
}

.table-bordered caption + thead tr:first-child th:last-child,
.table-bordered caption + tbody tr:first-child td:last-child,
.table-bordered colgroup + thead tr:first-child th:last-child,
.table-bordered colgroup + tbody tr:first-child td:last-child {
  -webkit-border-top-right-radius: 4px;
          border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
}

.table-striped tbody > tr:nth-child(odd) > td,
.table-striped tbody > tr:nth-child(odd) > th {
  background-color: #f9f9f9;
}

.table-hover tbody tr:hover > td,
.table-hover tbody tr:hover > th {
  background-color: #f5f5f5;
}

table td[class*="span"],
table th[class*="span"],
.row-fluid table td[class*="span"],
.row-fluid table th[class*="span"] {
  display: table-cell;
  float: none;
  margin-left: 0;
}
        </style>

    
    <meta name="description" content="A thermometer chart with an onmousemove event driven tooltip" />

     <script>
         window.onload = function () {
             

             var mensaje;
             var valor1 = (1335 * 100) / 6016;
             mensaje = getMessage(valor1);
             var color;
             color = getcolor(valor1);
             var thermometer = new RGraph.Thermometer('region1', 0, 100, valor1)
                 .Set('tooltips.event', 'onmousemove')
                 
                 .Set('tooltips', [mensaje])
                 .Set('colors', [color])
                 //.Draw();

             RGraph.Effects.Thermometer.Grow(thermometer);

            
             var valor2 = (1203 * 100) / 6034;
             mensaje = getMessage(valor2);
             var thermometer2 = new RGraph.Thermometer('region2', 0, 100, valor2)
                .Set('tooltips.event', 'onmousemove')
                .Set('tooltips', [mensaje])
                //.Draw();

             RGraph.Effects.Thermometer.Grow(thermometer2);

             var valor3 = (952 * 100) / 5885;
             mensaje = getMessage(valor2);
             var thermometer3 = new RGraph.Thermometer('region3', 0, 100, valor3)
                .Set('tooltips.event', 'onmousemove')
                .Set('tooltips', [mensaje])
             //.Draw();

             RGraph.Effects.Thermometer.Grow(thermometer3);

             var valor4 = (624 * 100) / 4546;
             mensaje = getMessage(valor2);
             var thermometer4 = new RGraph.Thermometer('region4', 0, 100, valor4)
                .Set('tooltips.event', 'onmousemove')
                .Set('tooltips', [mensaje])
             //.Draw();

             RGraph.Effects.Thermometer.Grow(thermometer4);

             var valor5 = (365 * 100) / 5954;
             mensaje = getMessage(valor2);
             var thermometer5 = new RGraph.Thermometer('region5', 0, 100, valor5)
                .Set('tooltips.event', 'onmousemove')
                .Set('tooltips', [mensaje])
             //.Draw();

             RGraph.Effects.Thermometer.Grow(thermometer5);
         }

         function getMessage(valor) {
             var mensaje;
             if (valor < 33) {
                 mensaje = "El porcentaje de certificación es muy <b style='color: red'>bajo</b>";
             } else if (valor >= 33 && valor <= 66) {
                 mensaje = "El porcentaje de certificación esta dentro de la <b style='color: orange'>media</b>";
             } else if (valor > 66) {
                 mensaje = "El porcentaje de certificación es muy <b style='color: green'>bien</b>";
             }
             return mensaje;
         }

         function getcolor(valor) {
             var mensaje;
             if (valor < 33) {
                 mensaje = "Gradient(#0c0:green:#f66:#fcc)";
             } else if (valor >= 33 && valor <= 66) {
                 mensaje = "Gradient(#c00:orange:#f66:#fcc)";
             } else if (valor > 66) {
                 mensaje = "'Gradient(#c00:green:#f66:#fcc)'";
             }
             return mensaje;
         }
    </script>
     
</head>
<body>
    <h2>Regiones</h2>
    <table cellpadding="0" cellspacing="0" border="0" style="width: 70%; text-align: center;" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>EU</th>
                <th>US</th>
                <th>GGM</th>
                <th>AI</th>
                <th>APAC</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><canvas id="region1" width="100" height="400">[No canvas support]</canvas></td>
                <td><canvas id="region2" width="100" height="400">[No canvas support]</canvas></td>
                <td><canvas id="region3" width="100" height="400">[No canvas support]</canvas></td>
                <td><canvas id="region4" width="100" height="400">[No canvas support]</canvas></td>
                <td><canvas id="region5" width="100" height="400">[No canvas support]</canvas></td>
            </tr>
        </tbody>

    </table>

    <h2>Datos graficados</h2>
    <table cellpadding="0" cellspacing="0" border="0" style="width: 20%; text-align: center;" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>Region</th>
                <th># BP Associates</th>
                <th># of BP</th>
                
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>EU</td>
                <td>6016</td>
                <td>1335</td>
            </tr>
            <tr>
                <td>US</td>
                <td>6034</td>
                <td>1203</td>
            </tr>
            <tr>
                <td>GGM</td>
                <td>5885</td>
                <td>952</td>
            </tr>
            <tr>
                <td>AI</td>
                <td>4546</td>
                <td>624</td>
            </tr>
            <tr>
                <td>APAC</td>
                <td>5954</td>
                <td>365</td>
            </tr>
        </tbody>
    </table>

    
    
</body>
</html>