<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
</head>
<body>
<div class="page">

  <div class="card">
    <img src="${url.resourcesPath}/img/logo.svg" class="logo" />

    <h1>Welcome back</h1>
    <p class="subtitle">Login with your account</p>

    <#if identityProviders?has_content>
      <#list identityProviders as p>
        <a class="social-btn" href="${p.loginUrl}">
          Login with ${p.displayName}
        </a>
      </#list>

      <div class="divider">Or continue with</div>
    </#if>

    <form action="${url.loginAction}" method="post" onsubmit="rememberLastUser()">
      <label>Email</label>
      <input type="text" name="username" placeholder="you@email.com" required autofocus />

      <div class="password-row">
        <label>Password</label>
        <a href="${url.loginResetCredentialsUrl}">Forgot your password?</a>
      </div>
      <input type="password" name="password" required />

      <button type="submit" class="primary-btn">Login</button>
    </form>

    <p class="signup">
      Don't have an account?
      <a href="${url.registrationUrl}">Sign up</a>
    </p>

    <#if message?has_content>
      <div class="error">${message.summary}</div>
    </#if>
  </div>

  <p class="legal">
    By continuing you agree to our <a href="/terms">Terms</a> and <a href="/privacy">Privacy Policy</a>.
  </p>
<div id="last-used"></div>

</div>
</body>
<script src="${url.resourcesPath}/js/last-used.js" defer></script>
</html>
