# שאלות נפוצות (FAQ) - RepoCraft

רשימת שאלות ותשובות נפוצות על RepoCraft.

## שאלות כלליות

### מה זה RepoCraft?
RepoCraft הוא מסגרת-על מקיפה ליצירת מאגרי GitHub מקצועיים. הוא מספק תבניות, כלים ומדריכים ליצירת מאגרים מתוחזקים היטב.

### איך RepoCraft שונה מכלים אחרים?
RepoCraft מתמקד ביצירת מאגרים מלאים ומקצועיים, כולל:
- תבניות GitHub מלאות
- CI/CD workflows
- תיעוד מקיף
- כלי אבטחה
- מדריכי קהילה

### איזה שפות תכנות נתמכות?
RepoCraft תומך במגוון רחב של שפות:
- JavaScript/TypeScript
- Python
- Go
- Rust
- Java
- C/C++
- ועוד...

## התקנה ושימוש

### איך מתקינים את RepoCraft?
```bash
# התקנה דרך npm
npm install -g repocraft

# או דרך pip
pip install repocraft

# או clone המאגר
git clone https://github.com/AnLoMinus/RepoCraft.git
```

### איך יוצרים מאגר חדש?
```bash
# מאגר בסיסי
repocraft create my-project

# מאגר עם תבנית ספציפית
repocraft create my-react-app --template react
```

### איך מוסיפים רכיבים למאגר קיים?
```bash
# הוספת קבצי תצורה
repocraft add config

# הוספת תבניות GitHub
repocraft add github

# הוספת CI/CD
repocraft add ci-cd
```

## תבניות

### איזה תבניות זמינות?
- `basic` - תבנית בסיסית
- `react` - פרויקט React
- `vue` - פרויקט Vue.js
- `angular` - פרויקט Angular
- `nodejs` - פרויקט Node.js
- `python` - פרויקט Python
- `go` - פרויקט Go
- `rust` - פרויקט Rust
- `java` - פרויקט Java
- `docker` - פרויקט Docker

### איך יוצרים תבנית מותאמת?
```bash
# יצירת תבנית חדשה
repocraft create-template my-template

# או דרך API
const repocraft = new RepoCraft();
await repocraft.createTemplate('my-template', {
  files: {
    'README.md': '# My Template',
    'package.json': { name: 'my-template' }
  }
});
```

## CI/CD

### איזה פלטפורמות CI/CD נתמכות?
- GitHub Actions
- GitLab CI
- Jenkins
- CircleCI
- Travis CI

### איך מוסיפים CI/CD למאגר?
```bash
# GitHub Actions
repocraft add ci-cd --platform github-actions

# GitLab CI
repocraft add ci-cd --platform gitlab-ci
```

### איך מתאמים workflows?
```yaml
# .github/workflows/ci.yml
name: CI
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Run tests
        run: npm test
```

## תיעוד

### איך יוצרים תיעוד למאגר?
```bash
# הוספת מבנה תיעוד בסיסי
repocraft add docs

# הוספת תיעוד מתקדם
repocraft add docs --advanced
```

### איזה סוגי תיעוד זמינים?
- README.md
- API documentation
- מדריכי התחלה מהירה
- מדריכי פיתוח
- מדריכי פריסה
- שאלות נפוצות

## אבטחה

### איך מוסיפים כלי אבטחה?
```bash
# הוספת בדיקות אבטחה
repocraft add security

# הוספת בדיקות תלויות
repocraft add security --dependencies
```

### איזה כלי אבטחה כלולים?
- CodeQL
- Dependabot
- Snyk
- Trivy
- Safety

## תרומה

### איך תורמים לפרויקט?
1. Fork המאגר
2. צרו branch חדש
3. עשו את השינויים
4. שלחו Pull Request

### איך מדווחים על באג?
פתחו Issue עם:
- תיאור מפורט של הבאג
- שלבים לשחזור
- מידע על סביבת העבודה

### איך מציעים תכונה חדשה?
פתחו Issue עם:
- תיאור התכונה
- הסבר על התועלת
- דוגמאות שימוש

## בעיות נפוצות

### השגיאה "Template not found"
וודאו שהתבנית קיימת:
```bash
repocraft list-templates
```

### השגיאה "Output directory exists"
השתמשו ב-`--force` לדריסה:
```bash
repocraft create my-project --force
```

### השגיאה "Permission denied"
וודאו שיש לכם הרשאות כתיבה:
```bash
chmod +w /path/to/output
```

### השגיאה "Network error"
בדקו את החיבור לאינטרנט ונסו שוב.

## ביצועים

### איך משפרים ביצועים?
- השתמשו ב-cache
- הפעילו בדיקות במקביל
- השתמשו ב-incremental builds

### איך מפחיתים גודל המאגר?
- השתמשו ב-.gitignore
- השתמשו ב-Git LFS לקבצים גדולים
- הסירו קבצים מיותרים

## תמיכה

### איפה מקבלים עזרה?
- [GitHub Issues](https://github.com/AnLoMinus/RepoCraft/issues)
- [GitHub Discussions](https://github.com/AnLoMinus/RepoCraft/discussions)
- [Discord Community](https://discord.gg/repocraft)

### איך מדווחים על בעיה?
פתחו Issue עם:
- תיאור הבעיה
- שלבים לשחזור
- מידע על סביבת העבודה
- לוגים רלוונטיים

### איך מבקשים תכונה?
פתחו Issue עם:
- תיאור התכונה
- הסבר על התועלת
- דוגמאות שימוש

## רישיון

### איזה רישיון יש לפרויקט?
RepoCraft מופץ תחת רישיון MIT. ראה [LICENSE](LICENSE) לפרטים.

### איך משתמשים בפרויקט בפרויקטים מסחריים?
הרישיון MIT מאפשר שימוש מסחרי. ראה [LICENSE](LICENSE) לפרטים.

## עדכונים

### איך מעדכנים את RepoCraft?
```bash
# דרך npm
npm update -g repocraft

# דרך pip
pip install --upgrade repocraft

# דרך git
git pull origin main
```

### איך עוקבים אחר עדכונים?
- הירשמו ל-GitHub notifications
- עקבו אחר [CHANGELOG](CHANGELOG.md)
- הצטרפו לקהילה ב-Discord

---

*עודכן לאחרונה: 28 בינואר 2025*
