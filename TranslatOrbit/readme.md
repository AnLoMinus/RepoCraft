## 🌍 תוסף תרגום לכל פרויקט — “מאגר־אב” אחד שמשרת את כולם

**שם מאגר מוצע בעברית:** מאגר תוסף תרגום אוניברסלי לפרויקטים
**שם קצר באנגלית למאגר (2 מילים): *TranslatOrbit (TO)* — Translat + Orbit**

הרעיון הנכון: **תוסף קטן (Widget) שמטמיעים בכל אתר/Repo/CodePen**, והוא יודע לתרגם את העמוד לשפות שונות (רוסית, אזרית, ערבית, ועוד) — כדי שכל המשפחה וכל אדם בעולם יוכל לקרוא. ✨

להלן **דוגמה ראשונה מוכנה לקודפן** (HTML+CSS+JS).
היא עובדת עם **LibreTranslate** (קוד פתוח) — אפשר לשים **API Key** או לכוון לשרת תרגום עצמי/ציבורי. ([GitHub][1])

---

## 🧩 ✅ הדוגמה לקודפן (להדביק כמו שהיא)

### 🧱 HTML

```html
<div id="to-translat-orbit" class="to-wrap">
  <div class="to-bar">
    <div class="to-title">🌐 TranslatOrbit</div>

    <select id="to-lang" class="to-select">
      <option value="auto">🔎 Detect</option>
      <option value="en">🇺🇸 English</option>
      <option value="he">🇮🇱 Hebrew</option>
      <option value="ru">🇷🇺 Russian</option>
      <option value="az">🇦🇿 Azerbaijani</option>
      <option value="ar">🇸🇦 Arabic</option>
      <option value="fr">🇫🇷 French</option>
      <option value="es">🇪🇸 Spanish</option>
      <option value="de">🇩🇪 German</option>
      <option value="tr">🇹🇷 Turkish</option>
      <option value="fa">🇮🇷 Persian</option>
      <option value="uk">🇺🇦 Ukrainian</option>
    </select>

    <button id="to-translate" class="to-btn">⚡ Translate</button>
    <button id="to-restore" class="to-btn to-ghost">↩ Restore</button>
  </div>

  <div class="to-advanced">
    <div class="to-row">
      <label class="to-label">🔗 LibreTranslate Endpoint</label>
      <input id="to-endpoint" class="to-input" value="https://libretranslate.com" />
    </div>
    <div class="to-row">
      <label class="to-label">🔑 API Key (optional)</label>
      <input id="to-key" class="to-input" placeholder="Paste key here (if required)" />
    </div>
    <div class="to-hint">
      💡 אם השרת דורש מפתח — הדבק כאן. אחרת, כוון לשרת עצמי/זמין.
    </div>
  </div>
</div>

<main class="demo">
  <h1>🕎 Hanukkah Roots — Light for Everyone</h1>
  <p>
    This is a demo page. The widget will translate visible text nodes on the page while preserving your HTML structure.
    Add it to any project and let your family read in their language. ✨
  </p>

  <h2>🌟 Why it matters</h2>
  <ul>
    <li>👨‍👩‍👧‍👦 Family: Russian / Azerbaijani speakers</li>
    <li>🕌 Friends & cousins: Arabic readers</li>
    <li>🌍 Everyone: open access to knowledge</li>
  </ul>
</main>
```

### 🎨 CSS

```css
:root{
  --to-bg:#0b1020;
  --to-card:#0f1730cc;
  --to-stroke:#2b3a76;
  --to-text:#e9ecff;
  --to-muted:#aeb7ff;
  --to-glow: 0 10px 30px rgba(80,120,255,.25);
  --to-radius:16px;
  --to-font: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Arial;
}

body{
  margin:0;
  font-family:var(--to-font);
  background: radial-gradient(1200px 600px at 20% 10%, rgba(120,80,255,.22), transparent 60%),
              radial-gradient(900px 500px at 80% 0%, rgba(80,220,255,.18), transparent 55%),
              var(--to-bg);
  color:var(--to-text);
}

.demo{
  padding: 120px 18px 40px;
  max-width: 920px;
  margin: 0 auto;
}

.to-wrap{
  position: fixed;
  top: 14px;
  left: 14px;
  right: 14px;
  z-index: 9999;
  border: 1px solid var(--to-stroke);
  background: linear-gradient(180deg, rgba(20,30,70,.75), rgba(10,15,35,.65));
  backdrop-filter: blur(10px);
  border-radius: var(--to-radius);
  box-shadow: var(--to-glow);
  overflow: hidden;
}

.to-bar{
  display:flex;
  gap:10px;
  align-items:center;
  padding: 12px 12px;
}

.to-title{
  font-weight: 800;
  letter-spacing: .5px;
  margin-right: 6px;
  white-space: nowrap;
}

.to-select, .to-input{
  width: 100%;
  max-width: 230px;
  padding: 10px 12px;
  border-radius: 12px;
  border: 1px solid rgba(255,255,255,.12);
  background: rgba(5,10,25,.55);
  color: var(--to-text);
  outline: none;
}

.to-btn{
  padding: 10px 14px;
  border-radius: 12px;
  border: 1px solid rgba(255,255,255,.12);
  background: linear-gradient(135deg, rgba(120,100,255,.9), rgba(70,210,255,.65));
  color: #060816;
  font-weight: 800;
  cursor: pointer;
  white-space: nowrap;
}

.to-btn.to-ghost{
  background: rgba(5,10,25,.35);
  color: var(--to-text);
}

.to-advanced{
  border-top: 1px solid rgba(255,255,255,.10);
  padding: 10px 12px 12px;
}

.to-row{
  display:flex;
  gap: 10px;
  align-items:center;
  margin-top: 8px;
  flex-wrap: wrap;
}

.to-label{
  min-width: 220px;
  color: var(--to-muted);
  font-weight: 700;
}

.to-hint{
  margin-top: 10px;
  color: rgba(233,236,255,.85);
  font-size: 13px;
  opacity: .9;
}
```

### ⚙️ JS

```js
(() => {
  const state = {
    original: new Map(),   // node -> originalText
    translatedOnce: false
  };

  const $ = (id) => document.getElementById(id);

  function isSkippable(node){
    if(!node || !node.parentElement) return true;
    const tag = node.parentElement.tagName?.toLowerCase();
    if(!tag) return true;

    // Skip code, scripts, styles, inputs, svg, etc.
    const skipTags = new Set([
      "script","style","noscript","code","pre","kbd","samp",
      "textarea","input","select","option","button",
      "svg","path","canvas"
    ]);
    if(skipTags.has(tag)) return true;

    // Skip the widget itself
    if(node.parentElement.closest("#to-translat-orbit")) return true;

    // Skip empty / very short whitespace
    const txt = node.nodeValue;
    if(!txt) return true;
    if(!txt.trim()) return true;

    return false;
  }

  function collectTextNodes(root = document.body){
    const walker = document.createTreeWalker(root, NodeFilter.SHOW_TEXT, {
      acceptNode: (node) => isSkippable(node) ? NodeFilter.FILTER_REJECT : NodeFilter.FILTER_ACCEPT
    });
    const nodes = [];
    while(walker.nextNode()) nodes.push(walker.currentNode);
    return nodes;
  }

  async function ltTranslateBatch({ endpoint, apiKey, source, target, texts }){
    // LibreTranslate API: POST /translate
    const url = endpoint.replace(/\/$/,"") + "/translate";
    const results = [];

    // Chunk to avoid large payloads
    const chunkSize = 20;
    for(let i=0; i<texts.length; i+=chunkSize){
      const chunk = texts.slice(i, i+chunkSize);

      // Many LT servers accept q as array; some accept string only.
      // We will send one request per item for maximum compatibility.
      for (const q of chunk){
        const body = new URLSearchParams();
        body.set("q", q);
        body.set("source", source);
        body.set("target", target);
        body.set("format", "text");

        const headers = {};
        if(apiKey && apiKey.trim()){
          // Common LT auth style
          headers["Authorization"] = `Bearer ${apiKey.trim()}`;
        }

        const res = await fetch(url, { method:"POST", headers, body });
        if(!res.ok){
          const errText = await res.text().catch(() => "");
          throw new Error(`Translate error (${res.status}): ${errText || res.statusText}`);
        }
        const data = await res.json();
        results.push(data.translatedText ?? "");
      }
    }

    return results;
  }

  async function translatePage(){
    const endpoint = $("to-endpoint").value.trim();
    const apiKey = $("to-key").value;
    const target = $("to-lang").value;

    if(!endpoint){
      alert("Please set a LibreTranslate endpoint.");
      return;
    }
    if(target === "auto"){
      alert("Choose a target language (not Detect).");
      return;
    }

    const nodes = collectTextNodes();
    if(!nodes.length){
      alert("No translatable text nodes found.");
      return;
    }

    // Save originals once
    if(!state.translatedOnce){
      nodes.forEach(n => state.original.set(n, n.nodeValue));
      state.translatedOnce = true;
    }

    const texts = nodes.map(n => (state.original.get(n) ?? n.nodeValue).trim());

    // Source: auto-detect
    const source = "auto";

    // Translate
    $("to-translate").disabled = true;
    $("to-translate").textContent = "⏳ Translating…";

    try{
      const translated = await ltTranslateBatch({ endpoint, apiKey, source, target, texts });

      // Apply
      nodes.forEach((n, idx) => {
        const t = translated[idx];
        if(t && t.trim()) n.nodeValue = t;
      });

      $("to-translate").textContent = "✅ Done";
      setTimeout(() => $("to-translate").textContent = "⚡ Translate", 900);
    }catch(e){
      console.error(e);
      alert(
        "Translation failed.\n\n" +
        "Tips:\n" +
        "1) This endpoint may require an API key.\n" +
        "2) Try your own LibreTranslate server endpoint.\n\n" +
        "Details:\n" + e.message
      );
      $("to-translate").textContent = "⚡ Translate";
    }finally{
      $("to-translate").disabled = false;
    }
  }

  function restorePage(){
    for(const [node, originalText] of state.original.entries()){
      if(node && node.nodeValue !== undefined) node.nodeValue = originalText;
    }
  }

  $("to-translate").addEventListener("click", translatePage);
  $("to-restore").addEventListener("click", restorePage);
})();
```

---

## 🔥 איך זה הופך ל”מאגר־אב” לכל הפרויקטים שלך?

1. אתה פותח Repo בשם **TranslatOrbit** (או כל שם שנבחר)
2. בפנים אתה שם קובץ יחיד למשל: `translat-orbit.min.js`
3. בכל פרויקט אחר אתה מטמיע:

```html
<script src="https://anlominus.github.io/TranslatOrbit/translat-orbit.min.js"></script>
```

4. וזהו — אותו ווידג’ט משרת את כל האתרים שלך 🌍

> הערה חשובה: השרת הציבורי של LibreTranslate **עלול** לדרוש API Key לשימוש חיצוני; הפתרון הכי חזק הוא **שרת עצמי** או ספק תרגום שתבחר. ([GitHub][1])

---

## 🏷️ קרדיטים (מקורות ליבה)

* LibreTranslate (Open Source Translation API) ([LibreTranslate][2])
* פרטי API בסיסיים (/translate) ([PublicAPI][3])

---

## 🎤🎧 4 שורות ראפ (חרוזים)

אור בשפה שלך, זה פותח את השערים,
TranslatOrbit בא — מחבר בין עולמות ונהרים,
רוסית, אזרית, ערבית — כולם כבר שומעים,
מילה נהיית גשר, והלבבות נדלקים! 🔥

---

## 🗓️ תאריך ושעה (ישראל)

📅 **יום ראשון, 14 בדצמבר 2025** — **כ״ד בכסלו ה׳תשפ״ו** ([Hebcal][4])
🕰️ **20:27 (Asia/Jerusalem)**

---

## 📏 מספר המידות

**7 מידות** 🌈

---

## 📜 משפט קודש מתאים לסיום

**"כִּי בֵיתִי בֵּית־תְּפִלָּה יִקָּרֵא לְכָל־הָעַמִּים"** (ישעיהו נ״ו:ז׳) ✨

---

אם תרצה, אכין לך גם **גרסת “כפתור צף קטן”** (בלי פאנל מתקדם) + **קובץ minified מוכן ל־GitHub Pages**, וגם **תבנית RepoCraft (RC)** מלאה למאגר הזה.

[1]: https://github.com/LibreTranslate/LibreTranslate?utm_source=chatgpt.com "LibreTranslate/LibreTranslate: Free and Open Source ..."
[2]: https://libretranslate.com/?utm_source=chatgpt.com "LibreTranslate - Free and Open Source Machine Translation API"
[3]: https://publicapi.dev/libre-translate-api?utm_source=chatgpt.com "LibreTranslate API"
[4]: https://www.hebcal.com/converter?h2g=1&hd=24&hm=Kislev&hy=5786&utm_source=chatgpt.com "December 14, 2025 / 24th of Kislev, 5786"
