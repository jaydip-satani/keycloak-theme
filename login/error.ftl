<!DOCTYPE html>
<html>
<head>
  <title>Error</title>
  <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
</head>
<body>
<div class="page">
  <div class="card">
    <img src="${url.resourcesPath}/img/logo.png" class="logo" />
    <h1>Something went wrong</h1>

    <div class="error-box">
      ${message.summary}
    </div>

    <a href="${url.loginUrl}" class="primary-btn">Back to login</a>
  </div>
</div>
</body>
</html>
