<!DOCTYPE html>
<html>
<head>
  <title>Reset password</title>
  <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
</head>
<body>
<div class="page">
  <div class="card">
    <img src="${url.resourcesPath}/img/logo.svg" class="logo" />
    <h1>Reset password</h1>

    <form action="${url.loginAction}" method="post">
      <input name="username" placeholder="Your email" required />
      <button class="primary-btn" type="submit">Send reset link</button>
    </form>

    <#if message?has_content>
      <div class="error-box">${message.summary}</div>
    </#if>
  </div>
</div>
</body>
</html>
