<!DOCTYPE html>
<html>
<head>
  <title>Sign up</title>
  <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
</head>
<body>
<div class="page">
  <div class="card">
    <img src="${url.resourcesPath}/img/logo.png" class="logo" />
    <h1>Create account</h1>

    <form action="${url.registrationAction}" method="post">
      <input name="email" type="email" placeholder="Email" required />
      <input name="username" placeholder="Username" required />
      <input name="password" type="password" placeholder="Password" required />
      <button class="primary-btn" type="submit">Sign up</button>
    </form>

    <#if message?has_content>
      <div class="error-box">${message.summary}</div>
    </#if>

    <p class="signup">
      Already have an account? <a href="${url.loginUrl}">Login</a>
    </p>
  </div>
</div>
</body>
</html>
