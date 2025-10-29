# מדריך תרומה (Contributing Guide)

תודה על התעניינותך בתרומה לפרויקט RepoCraft! 🎉

## איך לתרום

### דיווח על באגים
אם מצאת באג, אנא פתח Issue עם הפרטים הבאים:
- תיאור מפורט של הבעיה
- שלבים לשחזור הבאג
- סביבת העבודה שלך
- צילומי מסך (אם רלוונטי)

### הצעת תכונות חדשות
להצעת תכונות חדשות, פתח Issue עם:
- תיאור התכונה המבוקשת
- הסבר על התועלת
- דוגמאות שימוש (אם רלוונטי)

### תרומת קוד
1. **Fork** את המאגר
2. **צור branch** חדש לתכונה שלך:
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Commit** את השינויים:
   ```bash
   git commit -m 'Add amazing feature'
   ```
4. **Push** ל-branch:
   ```bash
   git push origin feature/amazing-feature
   ```
5. **פתח Pull Request**

## כללי פיתוח

### סגנון קוד
- השתמש בסגנון קוד עקבי
- הוסף הערות לקוד מורכב
- כתוב בדיקות לקוד חדש
- ודא שהקוד עובר את כל הבדיקות

### הודעות Commit
השתמש בפורמט הבא:
```
type(scope): description

[optional body]

[optional footer]
```

דוגמאות:
- `feat: add new template for React projects`
- `fix: correct typo in README`
- `docs: update contributing guide`
- `test: add unit tests for utils`

### סוגי Commits
- `feat`: תכונה חדשה
- `fix`: תיקון באג
- `docs`: שינוי בתיעוד
- `style`: שינוי בסגנון (פורמט, נקודות ופסיקים)
- `refactor`: שינוי קוד שאינו תיקון או תכונה
- `test`: הוספת בדיקות
- `chore`: שינוי בקבצי build או כלים

## תהליך Pull Request

### לפני שליחת PR
- [ ] הקוד עובר את כל הבדיקות
- [ ] הוספת בדיקות לתכונות חדשות
- [ ] עדכנת את התיעוד (אם נדרש)
- [ ] הודעת ה-commit עוקבת אחר הקונבנציות

### תהליך הביקורת
1. **אוטומציה**: הבדיקות האוטומטיות רצות
2. **ביקורת קוד**: חברי הקהילה בודקים את הקוד
3. **דיון**: דיון על השינויים אם נדרש
4. **אישור**: Maintainer מאשר את השינויים
5. **מיזוג**: השינויים מתמזגים למאגר הראשי

## סביבת פיתוח

### דרישות מערכת
- Git 2.0+
- Node.js 18+ (אם עובדים על כלי CLI)
- Python 3.8+ (אם עובדים על כלי Python)

### הגדרת סביבת פיתוח
```bash
# Clone המאגר
git clone https://github.com/AnLoMinus/RepoCraft.git
cd RepoCraft

# התקן תלויות (אם יש)
npm install  # או pip install -r requirements.txt

# הרץ בדיקות
npm test     # או python -m pytest
```

## כללי התנהגות
אנא קרא את [קוד ההתנהגות](CODE_OF_CONDUCT.md) שלנו לפני התרומה.

## שאלות ותמיכה
אם יש לך שאלות:
- פתח Issue עם תווית "question"
- הצטרף לדיונים ב-Discussions
- צור קשר דרך [דרכי התמיכה](SUPPORT.md)

## הכרת תודה
כל תרומה מוערכת! תורמים יופיעו ב-[CONTRIBUTORS.md](CONTRIBUTORS.md).

---
*תודה על התרומה לקהילה! 🙏*
