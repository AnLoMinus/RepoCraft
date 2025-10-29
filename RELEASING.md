# נוהל הוצאות גרסה - RepoCraft

מדריך זה מתאר את התהליך להוצאת גרסה חדשה של RepoCraft.

## סקירה כללית

הוצאת גרסה כוללת:
1. הכנת הקוד
2. עדכון גרסאות
3. יצירת תג
4. בניית החבילות
5. פרסום הגרסה

## שלבי ההוצאה

### 1. הכנת הקוד

#### בדיקות מקדימות
```bash
# הרץ את כל הבדיקות
npm test
python -m pytest

# בדוק את איכות הקוד
npm run lint
python -m flake8 src/

# בדוק את הביטחון
npm audit
pip install safety && safety check
```

#### עדכון תלויות
```bash
# עדכן תלויות Node.js
npm update

# עדכן תלויות Python
pip install --upgrade -r requirements.txt
```

### 2. עדכון גרסאות

#### עדכון קבצי גרסה
```bash
# עדכן package.json
npm version patch  # או minor/major

# עדכן pyproject.toml
# עדכן את השדה version

# עדכן VERSION
echo "1.0.1" > VERSION
```

#### עדכון CHANGELOG
```markdown
## [1.0.1] - 2025-01-28

### נוסף
- תכונה חדשה

### שונה
- שיפור תכונה קיימת

### תוקן
- תיקון באג
```

### 3. יצירת תג

#### יצירת תג מקומי
```bash
# צור תג
git tag -a v1.0.1 -m "Release version 1.0.1"

# שלח תג
git push origin v1.0.1
```

#### יצירת תג דרך GitHub
1. לכו ל-[Releases](https://github.com/AnLoMinus/RepoCraft/releases)
2. לחצו על "Create a new release"
3. בחרו תג חדש או צרו אחד
4. כתבו תיאור הגרסה
5. לחצו על "Publish release"

### 4. בניית החבילות

#### בניית חבילות Node.js
```bash
# בנייה לייצור
npm run build

# יצירת חבילה
npm pack
```

#### בניית חבילות Python
```bash
# בנייה
python -m build

# בדיקה
python -m twine check dist/*
```

### 5. פרסום הגרסה

#### פרסום ל-NPM
```bash
# פרסום
npm publish

# או פרסום עם תג
npm publish --tag beta
```

#### פרסום ל-PyPI
```bash
# פרסום
python -m twine upload dist/*

# או פרסום לבדיקה
python -m twine upload --repository testpypi dist/*
```

## סוגי גרסאות

### Semantic Versioning
אנו עוקבים אחר [Semantic Versioning](https://semver.org/):

- **MAJOR** (1.0.0): שינויים שבירה
- **MINOR** (0.1.0): תכונות חדשות (לא שבירה)
- **PATCH** (0.0.1): תיקוני באגים

### דוגמאות
```bash
# תיקון באג
npm version patch  # 1.0.0 -> 1.0.1

# תכונה חדשה
npm version minor  # 1.0.0 -> 1.1.0

# שינוי שבירה
npm version major  # 1.0.0 -> 2.0.0
```

## תהליך אוטומטי

### GitHub Actions
התהליך מוגדר ב-[.github/workflows/release.yml](.github/workflows/release.yml):

```yaml
name: Release
on:
  push:
    tags:
      - 'v*'
```

### שלבים אוטומטיים
1. בדיקת הקוד
2. בניית החבילות
3. יצירת Release
4. פרסום ל-NPM/PyPI

## בדיקות לפני הוצאה

### רשימת בדיקות
- [ ] כל הבדיקות עוברות
- [ ] הקוד עובר linting
- [ ] התיעוד מעודכן
- [ ] CHANGELOG מעודכן
- [ ] גרסאות מעודכנות
- [ ] תג נוצר
- [ ] Release נוצר ב-GitHub

### בדיקות ידניות
```bash
# בדוק שהגרסה נכונה
cat VERSION
cat package.json | grep version
cat pyproject.toml | grep version

# בדוק שהתג קיים
git tag -l | grep v1.0.1

# בדוק שהחבילות נבנו
ls dist/
ls *.tgz
```

## בעיות נפוצות

### שגיאת פרסום
```bash
# בדוק הרשאות
npm whoami
python -m twine check dist/*

# בדוק שהגרסה לא קיימת
npm view repocraft version
```

### שגיאת תג
```bash
# בדוק שהתג קיים
git tag -l

# מחק תג שגוי
git tag -d v1.0.1
git push origin :refs/tags/v1.0.1
```

### שגיאת בנייה
```bash
# נקה cache
npm cache clean --force
pip cache purge

# נקה build
rm -rf dist/ build/
npm run build
python -m build
```

## תמיכה

אם נתקלתם בבעיות בתהליך ההוצאה:
- בדקו את [שאלות נפוצות](docs/FAQ.md)
- פתחו Issue ב-GitHub
- הצטרפו לקהילה ב-Discord

---

*עודכן לאחרונה: 28 בינואר 2025*
