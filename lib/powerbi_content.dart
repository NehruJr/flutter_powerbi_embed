String powerBIHtml({
  required String accessToken,
  required String embedUrl,
  required String id,
  String type = "report",
  int layoutType = 2,
  int tokenType = 1,
  bool filterPaneEnabled = false,
  bool navContentPaneEnabled = false,
}) {
  return """
<!doctype html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width">
    <script src="https://cdn.jsdelivr.net/npm/powerbi-client@2.8.0/dist/powerbi.min.js"></script>
    <style>
        html,
        body,
        #reportContainer {
            width: 100%;
            height: 100%;
            margin: 0;
            background-color: white;
            -webkit-overflow-scrolling: touch;
        }
        iframe {
            border: 0px;
        }
    </style>
</head>
<body>
    <div id="reportContainer"></div>
    <script>
    var models = window['powerbi-client'].models;
    var config = {
  'type': "$type",
  'tokenType': $tokenType,
  'accessToken': "$accessToken",
  'embedUrl': "$embedUrl",
  'id': "$id",
  'settings': {
    'filterPaneEnabled': $filterPaneEnabled,
    'navContentPaneEnabled': $navContentPaneEnabled,
    'layoutType': $layoutType,
  },
}
    var reportContainer = document.getElementById('reportContainer');
    var report = powerbi.embed(reportContainer, config);
    </script>
</body>
</html>
    """;
}
