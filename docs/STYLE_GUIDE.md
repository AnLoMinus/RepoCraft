# מדריך סגנון - RepoCraft

מדריך זה מגדיר את הסטנדרטים לסגנון קוד, תיעוד ותקשורת בפרויקט RepoCraft.

## סגנון קוד

### JavaScript/TypeScript

#### כללים כלליים
- השתמשו ב-2 רווחים לזחיפה
- השתמשו בגרשיים יחידים למחרוזות
- הוסיפו נקודה ופסיק בסוף כל הצהרה
- השתמשו ב-camelCase למשתנים ופונקציות
- השתמשו ב-PascalCase לקלאסים

#### דוגמה:
```javascript
const userName = 'john_doe';
const userAge = 25;

function calculateTotal(price, tax) {
  return price + (price * tax);
}

class UserManager {
  constructor(name) {
    this.name = name;
  }
  
  getName() {
    return this.name;
  }
}
```

### Python

#### כללים כלליים
- השתמשו ב-4 רווחים לזחיפה
- השתמשו בגרשיים יחידים למחרוזות
- השתמשו ב-snake_case למשתנים ופונקציות
- השתמשו ב-PascalCase לקלאסים
- הוסיפו רווחים סביב אופרטורים

#### דוגמה:
```python
user_name = 'john_doe'
user_age = 25

def calculate_total(price, tax):
    return price + (price * tax)

class UserManager:
    def __init__(self, name):
        self.name = name
    
    def get_name(self):
        return self.name
```

### Go

#### כללים כלליים
- השתמשו ב-tab לזחיפה
- השתמשו ב-camelCase למשתנים ופונקציות
- השתמשו ב-PascalCase לפונקציות וטיפוסים ציבוריים
- הוסיפו רווחים סביב אופרטורים

#### דוגמה:
```go
package main

import "fmt"

type UserManager struct {
    name string
}

func NewUserManager(name string) *UserManager {
    return &UserManager{name: name}
}

func (um *UserManager) GetName() string {
    return um.name
}
```

## סגנון תיעוד

### Markdown

#### כותרות
- השתמשו ב-# לכותרות ראשיות
- השתמשו ב-## לכותרות משניות
- הוסיפו רווח אחרי #

#### דוגמה:
```markdown
# כותרת ראשית

## כותרת משנית

### כותרת שלישית
```

#### קישורים
- השתמשו בפורמט `[טקסט](URL)`
- הוסיפו תיאור לקישורים חיצוניים

#### דוגמה:
```markdown
[מדריך API](API.md)
[GitHub](https://github.com/AnLoMinus/RepoCraft) - מאגר הפרויקט
```

#### קוד
- השתמשו ב-``` לקטעי קוד
- ציינו את שפת התכנות
- הוסיפו הערות לקוד מורכב

#### דוגמה:
```markdown
```javascript
function calculateTotal(price, tax) {
  // חישוב המחיר הכולל כולל מס
  return price + (price * tax);
}
```
```

### הערות בקוד

#### JavaScript/TypeScript
```javascript
/**
 * מחשב את המחיר הכולל כולל מס
 * @param {number} price - המחיר הבסיסי
 * @param {number} tax - אחוז המס
 * @returns {number} המחיר הכולל
 */
function calculateTotal(price, tax) {
  return price + (price * tax);
}
```

#### Python
```python
def calculate_total(price, tax):
    """
    מחשב את המחיר הכולל כולל מס
    
    Args:
        price (float): המחיר הבסיסי
        tax (float): אחוז המס
        
    Returns:
        float: המחיר הכולל
    """
    return price + (price * tax)
```

## סגנון הודעות Commit

### פורמט
```
type(scope): description

[optional body]

[optional footer]
```

### סוגי Commits
- `feat`: תכונה חדשה
- `fix`: תיקון באג
- `docs`: שינוי בתיעוד
- `style`: שינוי בסגנון
- `refactor`: רפקטורינג
- `test`: הוספת בדיקות
- `chore`: שינוי בכלים או build

### דוגמאות
```
feat: add new template for React projects
fix: correct typo in README
docs: update API documentation
test: add unit tests for utils
chore: update dependencies
```

## סגנון Issues ו-Pull Requests

### Issues

#### כותרת
- התחילו עם סוג הבעיה: `[BUG]`, `[FEATURE]`, `[DOCS]`
- השתמשו בעברית ברורה ותמציתית

#### תוכן
- תיאור מפורט של הבעיה
- שלבים לשחזור (אם רלוונטי)
- מידע על סביבת העבודה
- צילומי מסך (אם רלוונטי)

### Pull Requests

#### כותרת
- התחילו עם סוג השינוי: `[FEAT]`, `[FIX]`, `[DOCS]`
- השתמשו בעברית ברורה ותמציתית

#### תוכן
- תיאור השינויים
- קישור ל-Issue רלוונטי
- רשימת בדיקות
- מידע נוסף למבקרים

## סגנון תקשורת

### כללים כלליים
- השתמשו בעברית ברורה ותמציתית
- היו מנומסים ומכבדים
- הימנעו ממילים פוגעניות
- השתמשו באמוג'י במידה

### דוגמאות

#### טוב:
```
שלום! תודה על התרומה. יש לי כמה הערות קטנות:

1. הפונקציה יכולה להיות יותר יעילה
2. חסרות בדיקות לפונקציה זו

אשמח אם תוכל לתקן את הנקודות האלה.
```

#### פחות טוב:
```
הקוד שלך לא טוב. תקן את זה.
```

## כלי עזר

### Prettier (JavaScript/TypeScript)
```json
{
  "semi": true,
  "trailingComma": "es5",
  "singleQuote": true,
  "printWidth": 80,
  "tabWidth": 2
}
```

### ESLint (JavaScript/TypeScript)
```json
{
  "extends": ["eslint:recommended"],
  "rules": {
    "indent": ["error", 2],
    "quotes": ["error", "single"],
    "semi": ["error", "always"]
  }
}
```

### Black (Python)
```toml
[tool.black]
line-length = 88
target-version = ['py38']
```

### Flake8 (Python)
```ini
[flake8]
max-line-length = 88
extend-ignore = E203, W503
```

## בדיקות איכות

### לפני שליחת PR
- [ ] הקוד עובר את כל הבדיקות
- [ ] הקוד עובר את כלי ה-linting
- [ ] הקוד מעוצב לפי הכללים
- [ ] הוספתי בדיקות לקוד חדש
- [ ] עדכנתי את התיעוד

### כלים מומלצים
- **JavaScript/TypeScript**: ESLint, Prettier, Jest
- **Python**: Flake8, Black, Pytest
- **Go**: gofmt, golint, go test
- **Markdown**: markdownlint

## משאבים נוספים

- [מדריך תרומה](CONTRIBUTING.md)
- [קוד התנהגות](CODE_OF_CONDUCT.md)
- [שאלות נפוצות](FAQ.md)

---

*עודכן לאחרונה: 28 בינואר 2025*
