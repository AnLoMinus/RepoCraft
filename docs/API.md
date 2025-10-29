# מדריך API - RepoCraft

תיעוד מלא של ה-API של RepoCraft.

## סקירה כללית

RepoCraft מספק API פשוט ויעיל ליצירת מאגרי GitHub מקצועיים. ה-API כולל פקודות CLI ופונקציות JavaScript/TypeScript.

## CLI API

### פקודות בסיסיות

#### `repocraft create <name> [options]`

יוצר מאגר חדש עם התבנית הנבחרת.

**פרמטרים:**
- `name` (חובה) - שם המאגר
- `--template, -t` - תבנית לשימוש (ברירת מחדל: basic)
- `--output, -o` - תיקיית פלט (ברירת מחדל: ./)
- `--force, -f` - דרוס קבצים קיימים
- `--interactive, -i` - מצב אינטראקטיבי

**דוגמאות:**
```bash
repocraft create my-app
repocraft create my-app --template react
repocraft create my-app --output /path/to/output
```

#### `repocraft add <component> [options]`

מוסיף רכיב למאגר קיים.

**רכיבים זמינים:**
- `config` - קבצי תצורה בסיסיים
- `github` - תבניות GitHub
- `ci-cd` - CI/CD workflows
- `docs` - מבנה תיעוד
- `tests` - מבנה בדיקות

**דוגמאות:**
```bash
repocraft add config
repocraft add github --templates bug-report,feature-request
repocraft add ci-cd --platform github-actions
```

#### `repocraft init [options]`

מאתחל RepoCraft בפרויקט קיים.

**פרמטרים:**
- `--template, -t` - תבנית לשימוש
- `--force, -f` - דרוס קבצים קיימים

**דוגמה:**
```bash
repocraft init --template nodejs
```

### פקודות עזר

#### `repocraft list-templates`

מציג רשימה של כל התבניות הזמינות.

#### `repocraft validate <path>`

בודק אם המאגר עומד בסטנדרטים של RepoCraft.

#### `repocraft update`

מעדכן את RepoCraft לגרסה האחרונה.

## JavaScript/TypeScript API

### ייבוא

```javascript
import { RepoCraft } from 'repocraft';
// או
const { RepoCraft } = require('repocraft');
```

### יצירת מאגר

```javascript
const repocraft = new RepoCraft();

// יצירת מאגר בסיסי
await repocraft.create('my-app', {
  template: 'basic',
  output: './output'
});

// יצירת מאגר React
await repocraft.create('my-react-app', {
  template: 'react',
  output: './output',
  force: true
});
```

### הוספת רכיבים

```javascript
// הוספת קבצי תצורה
await repocraft.addConfig({
  includeGitignore: true,
  includeEditorConfig: true,
  includeGitAttributes: true
});

// הוספת תבניות GitHub
await repocraft.addGitHubTemplates({
  templates: ['bug-report', 'feature-request', 'documentation'],
  output: './.github/ISSUE_TEMPLATE'
});

// הוספת CI/CD
await repocraft.addCICD({
  platform: 'github-actions',
  workflows: ['ci', 'lint', 'release', 'pages']
});
```

### תבניות

```javascript
// קבלת רשימת תבניות
const templates = await repocraft.getTemplates();
console.log(templates);

// קבלת פרטי תבנית
const template = await repocraft.getTemplate('react');
console.log(template);

// יצירת תבנית מותאמת
await repocraft.createTemplate('my-template', {
  files: {
    'README.md': '# My Template',
    'package.json': { name: 'my-template' }
  }
});
```

### אימות

```javascript
// אימות מאגר
const validation = await repocraft.validate('./my-repo');
console.log(validation);

// אימות תבנית
const templateValidation = await repocraft.validateTemplate('react');
console.log(templateValidation);
```

## תבניות

### תבנית בסיסית

```json
{
  "name": "basic",
  "description": "תבנית בסיסית למאגר GitHub",
  "files": {
    "README.md": "template/README.md",
    "LICENSE": "template/LICENSE",
    ".gitignore": "template/.gitignore"
  },
  "dependencies": [],
  "scripts": {}
}
```

### תבנית React

```json
{
  "name": "react",
  "description": "תבנית לפרויקט React",
  "files": {
    "package.json": "template/react/package.json",
    "src/": "template/react/src/",
    "public/": "template/react/public/"
  },
  "dependencies": [
    "react",
    "react-dom",
    "react-scripts"
  ],
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test"
  }
}
```

## שגיאות

### שגיאות נפוצות

```javascript
try {
  await repocraft.create('my-app');
} catch (error) {
  if (error.code === 'TEMPLATE_NOT_FOUND') {
    console.log('תבנית לא נמצאה');
  } else if (error.code === 'OUTPUT_DIRECTORY_EXISTS') {
    console.log('תיקיית הפלט כבר קיימת');
  }
}
```

### קודי שגיאה

- `TEMPLATE_NOT_FOUND` - תבנית לא נמצאה
- `OUTPUT_DIRECTORY_EXISTS` - תיקיית פלט כבר קיימת
- `INVALID_TEMPLATE` - תבנית לא תקינה
- `VALIDATION_FAILED` - אימות נכשל
- `NETWORK_ERROR` - שגיאת רשת

## דוגמאות מתקדמות

### יצירת מאגר מותאם

```javascript
const repocraft = new RepoCraft();

// יצירת תבנית מותאמת
const customTemplate = {
  name: 'my-custom-template',
  files: {
    'README.md': '# My Custom Project',
    'package.json': {
      name: 'my-custom-project',
      version: '1.0.0',
      scripts: {
        start: 'node index.js',
        test: 'jest'
      }
    }
  }
};

await repocraft.createTemplate('my-custom-template', customTemplate);

// שימוש בתבנית המותאמת
await repocraft.create('my-project', {
  template: 'my-custom-template',
  output: './output'
});
```

### הוספת רכיבים מותאמים

```javascript
// הוספת CI/CD מותאם
await repocraft.addCICD({
  platform: 'github-actions',
  workflows: {
    'ci.yml': {
      name: 'CI',
      on: ['push', 'pull_request'],
      jobs: {
        test: {
          'runs-on': 'ubuntu-latest',
          steps: [
            { uses: 'actions/checkout@v4' },
            { name: 'Run tests', run: 'npm test' }
          ]
        }
      }
    }
  }
});
```

## תמיכה

אם אתם נתקלים בבעיות עם ה-API:
- בדקו את [שאלות נפוצות](FAQ.md)
- פתחו Issue ב-GitHub
- הצטרפו לקהילה ב-Discord

---

*עודכן לאחרונה: 28 בינואר 2025*
