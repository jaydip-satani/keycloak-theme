<!DOCTYPE html>
<html>
<head>
  <title>Set new password</title>
  <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
</head>
<body>
<div class="page">
  <div class="card">
    <img src="${url.resourcesPath}/img/logo.png" class="logo" />
    <h1>Set new password</h1>

    <form action="${url.loginAction}" method="post">
      <input name="password-new" type="password" placeholder="New password" required />
      <input name="password-confirm" type="password" placeholder="Confirm password" required />
      <button class="primary-btn" type="submit">Update</button>
    </form>
    <#if message?has_content>
      <div class="error-box">${message.summary}</div>
    </#if>
  </div>
</div>
</body>
</html>
