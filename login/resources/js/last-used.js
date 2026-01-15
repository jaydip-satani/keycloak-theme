(function () {
  const STORAGE_KEY = "kc-last-user";

  function safeGet() {
    try {
      return localStorage.getItem(STORAGE_KEY);
    } catch {
      return null;
    }
  }

  function safeSet(val) {
    try {
      localStorage.setItem(STORAGE_KEY, val);
    } catch {}
  }

  function injectButton(email) {
    const container = document.getElementById("last-used");
    if (!container) return;

    const btn = document.createElement("button");
    btn.className = "last-used-btn";
    btn.type = "button";
    btn.innerText = `Continue as ${email}`;
    btn.onclick = () => {
      const input = document.querySelector("input[name='username']");
      if (input) input.value = email;
    };

    container.appendChild(btn);
  }

  window.rememberLastUser = function () {
    const input = document.querySelector("input[name='username']");
    if (input && input.value) safeSet(input.value.trim());
  };

  document.addEventListener("DOMContentLoaded", () => {
    const last = safeGet();
    if (last) injectButton(last);
  });
})();
