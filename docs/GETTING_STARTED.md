# התחלה מהירה - RepoCraft

מדריך זה יעזור לכם להתחיל עם RepoCraft במהירות.

## התקנה

### דרישות מערכת
- Git 2.0+
- Node.js 18+ (אופציונלי)
- Python 3.8+ (אופציונלי)

### התקנה מהירה

```bash
# Clone המאגר
git clone https://github.com/AnLoMinus/RepoCraft.git
cd RepoCraft

# התקן תלויות (אם יש)
npm install  # או pip install -r requirements.txt
```

## שימוש בסיסי

### יצירת מאגר חדש

```bash
# השתמש בתבנית הבסיסית
repocraft create my-new-repo

# או עם תבנית מותאמת
repocraft create my-new-repo --template react
```

### הוספת קבצים למאגר קיים

```bash
# הוסף קבצי תצורה
repocraft add-config

# הוסף תבניות GitHub
repocraft add-github-templates

# הוסף CI/CD
repocraft add-ci-cd
```

## דוגמאות

### יצירת מאגר React

```bash
repocraft create my-react-app --template react
cd my-react-app
npm install
npm start
```

### יצירת מאגר Python

```bash
repocraft create my-python-project --template python
cd my-python-project
pip install -r requirements.txt
python -m pytest
```

### יצירת מאגר Node.js

```bash
repocraft create my-node-app --template nodejs
cd my-node-app
npm install
npm test
```

## תבניות זמינות

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

## קבצי תצורה

RepoCraft יוצר את הקבצים הבאים:

- `README.md` - תיעוד הפרויקט
- `LICENSE` - רישיון שימוש
- `CHANGELOG.md` - יומן שינויים
- `CONTRIBUTING.md` - מדריך תרומה
- `CODE_OF_CONDUCT.md` - קוד התנהגות
- `SECURITY.md` - מדיניות אבטחה
- `.gitignore` - החרגות Git
- `.github/` - תבניות GitHub

## שלבים הבאים

1. **קראו את התיעוד**: עברו על [מדריך API](API.md)
2. **התאמה אישית**: התאימו את הקבצים לצרכים שלכם
3. **הוספת קוד**: התחילו לפתח את הפרויקט שלכם
4. **תרומה לקהילה**: שקלו לתרום בחזרה

## עזרה נוספת

- [שאלות נפוצות](FAQ.md)
- [מדריך פתרון בעיות](TROUBLESHOOTING.md)
- [קהילה](COMMUNITY.md)

---

*עודכן לאחרונה: 28 בינואר 2025*
