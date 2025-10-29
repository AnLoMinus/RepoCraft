# 🛡️ כללי הגנה על ענף ראשי - RepoCraft

## סקירה כללית

מסמך זה מגדיר את כללי ההגנה על הענף הראשי (`main`) במאגר RepoCraft, כולל הגדרות אוטו-מיזוג, בדיקות נדרשות, והרשאות מיוחדות.

## כללי הגנה מומלצים

### ✅ בדיקות נדרשות (Required Status Checks)
- **CI** - בדיקות רציפות (ci.yml)
- **Lint** - בדיקות איכות קוד (lint.yml)
- **Test** - בדיקות יחידה ואינטגרציה
- **Build** - בניית הפרויקט
- **Security Scan** - בדיקות אבטחה (security-scan.yml)
- **Pages** - בניית אתר התיעוד (pages.yml)

### 🔒 הגדרות אבטחה
- **Require linear history** - היסטוריה ליניארית
- **Require branches to be up to date** - ענפים מעודכנים
- **Allow auto-merge** - אפשרות למיזוג אוטומטי
- **Restrict pushes that create files** - הגבלת יצירת קבצים

### 👥 הרשאות מיוחדות
- **Bypass approvals for `dependabot[bot]`** - דילוג על אישורים ל-Dependabot
- **Bypass approvals for `AnLoMinus`** - דילוג על אישורים למנהל הפרויקט
- **Require review from code owners** - דרישת ביקורת מבעלי הקוד

## תוויות אוטו-מיזוג

### 🟢 תוויות המאפשרות אוטו-מיזוג
- `automerge` - מיזוג אוטומטי לאחר בדיקות
- `dependencies` - עדכוני תלויות בטוחים
- `safe-update` - עדכונים בטוחים מאומתים

### 🔴 תוויות המונעות אוטו-מיזוג
- `no-automerge` - מניעת מיזוג אוטומטי
- `breaking-change` - שינויים שבירה
- `needs-review` - דרישת ביקורת ידנית
- `do-not-merge` - איסור מיזוג

## סוגי עדכונים אוטומטיים

### ✅ עדכונים אוטומטיים מותרים
- **Patch updates** (1.0.0 → 1.0.1) - תיקוני באגים
- **Minor updates** (1.0.0 → 1.1.0) - תכונות חדשות לא שבירה
- **Security updates** - תיקוני אבטחה
- **Dependency updates** - עדכוני תלויות בטוחים

### ⚠️ עדכונים הדורשים ביקורת ידנית
- **Major updates** (1.0.0 → 2.0.0) - שינויים שבירה
- **Breaking changes** - שינויים שבירה
- **API changes** - שינויים ב-API
- **Configuration changes** - שינויים בהגדרות

## הגדרות Dependabot

### 🔄 עדכונים אוטומטיים
```yaml
# עדכונים שבועיים
schedule:
  interval: "weekly"
  day: "monday"
  time: "09:00"

# הגבלת מספר PRים פתוחים
open-pull-requests-limit: 10

# הודעות commit אחידות
commit-message:
  prefix: "chore"
  include: "scope"
```

### 🏷️ תוויות אוטומטיות
- `dependencies` - עדכוני תלויות
- `javascript` - עדכוני JavaScript/Node.js
- `python` - עדכוני Python
- `github-actions` - עדכוני GitHub Actions
- `docker` - עדכוני Docker

## הגדרות Workflows

### 🔧 Workflows נדרשים
1. **dependabot-auto-merge.yml** - אוטו-מיזוג ל-Dependabot
2. **label-automerge.yml** - מיזוג לפי תוויות
3. **runner-guard.yml** - בדיקת תאימות ראנרים
4. **ci.yml** - בדיקות רציפות
5. **lint.yml** - בדיקות איכות
6. **security-scan.yml** - בדיקות אבטחה

### ⚙️ הגדרות הרשאות
```yaml
permissions:
  contents: write      # כתיבה למאגר
  pull-requests: write # כתיבה ל-PRים
  issues: write        # כתיבה ל-Issues
  checks: write        # כתיבה לבדיקות
```

## כללי ביקורת קוד

### 📋 תהליך ביקורת
1. **בדיקה אוטומטית** - CI, Lint, Test, Build
2. **ביקורת ידנית** - קוד, לוגיקה, אבטחה
3. **אישור** - בעל הקוד או מנהל
4. **מיזוג** - אוטומטי או ידני

### 🎯 קריטריונים לאישור
- ✅ כל הבדיקות עוברות
- ✅ הקוד עוקב אחר הסטנדרטים
- ✅ אין שינויים שבירה לא מתועדים
- ✅ התיעוד מעודכן
- ✅ הבדיקות מכסות את השינויים

## הגדרות GitHub Rulesets

### 🛡️ Ruleset מומלץ
```yaml
name: "Main Branch Protection"
target: "branch"
enforcement: "active"
conditions:
  ref_name:
    include: ["main"]
rules:
  - type: "required_status_checks"
    parameters:
      required_status_checks:
        strict: true
        contexts: ["CI", "Lint", "Test", "Build", "Security Scan"]
  - type: "required_pull_request_reviews"
    parameters:
      required_approving_review_count: 1
      dismiss_stale_reviews_on_push: true
      require_code_owner_reviews: true
  - type: "linear_history"
  - type: "deletion"
    parameters:
      protected: true
  - type: "non_fast_forward"
    parameters:
      protected: true
bypass_actors:
  - actor_id: "dependabot[bot]"
    actor_type: "Integration"
    bypass_mode: "always"
  - actor_id: "AnLoMinus"
    actor_type: "User"
    bypass_mode: "always"
```

## מעקב ובקרה

### 📊 מדדים לניטור
- מספר PRים ממתינים
- זמן ממוצע למיזוג
- אחוז מיזוגים אוטומטיים
- מספר כישלונות CI
- זמן תגובה לביקורות

### 🔍 דוחות שבועיים
- סיכום עדכוני תלויות
- סטטיסטיקות מיזוג
- בעיות אבטחה שזוהו
- ביצועי CI/CD

## טיפים וכללי אצבע

### ✅ מה לעשות
- השתמש בתוויות `automerge` לעדכונים בטוחים
- בדוק את ה-CI לפני מיזוג
- עדכן את התיעוד עם שינויים
- השתמש ב-`no-automerge` כשצריך ביקורת ידנית

### ❌ מה לא לעשות
- אל תמזג PRים עם כישלונות CI
- אל תדלג על ביקורת קוד לשינויים גדולים
- אל תעדכן תלויות ללא בדיקה
- אל תשבור את ההיסטוריה הליניארית

## תמיכה ועזרה

### 📚 משאבים
- [GitHub Branch Protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches)
- [Dependabot Configuration](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuration-options-for-dependabot-version-updates)
- [GitHub Actions](https://docs.github.com/en/actions)

### 🆘 בעיות נפוצות
- **CI נכשל** - בדוק את הלוגים ותקן את הבעיות
- **אוטו-מיזוג לא עובד** - ודא שהתוויות נכונות והבדיקות עוברות
- **Dependabot לא מעדכן** - בדוק את הגדרות ה-`.github/dependabot.yml`

---

*עודכן לאחרונה: 29 באוקטובר 2025*
