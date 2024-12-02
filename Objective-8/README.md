
# Objective 8: Mobile Analysis

**Difficultree: 🎄🎄**  
**Location: Front Yard (Act 2), West, Narrative of Eve Snowshoes**

For this objective an Android application package is provided. It contains a list of children - with one of them not being displayed in the user interface. The target is to find this missing name.

## Easy 🥈
The objective is to analyze a provided Android application in .apk format.

When unpacking the application, it is easy to find the file `DatabaseHelper.smali` which contains the database initialization details like this:
```
const-string v0, "INSERT INTO NormalList (Item) VALUES (\'Carlos, Madrid, Spain\');"
```

Comparing the `INSERT` statements with what is displayed when the app is run in an Android emulator shows, that "Ellie, Alabama, USA" is the name not being displayed in the UI of the app.


**Achievement: [Silver] Mobile Analysis**

## Hard 🥇
For the hard part, a similar application is provided in an .aab format.
As here the `INSERT`statements contain encrypted data, it is not that easy to perform an analysis here.

Instead, the application was analyzed in an Android emulator.
```
java -jar bundletool-all-1.17.2.jar build-apks --bundle=SantaSwipeSecure.aab --output=SantaSwipeSecure.apks --mode=universal
java -jar bundletool-all-1.17.2.jar install-apks --apks=SantaSwipeSecure.apks
```

It was found, that the application uses an sqlite3 database and that it is possible to interact with it using an adb root session:
```
adb root
adb shell
cd /data/data/com.northpole.santaswipe/databases
sqlite3 naughtynicelist.db
sqlite> .schema
CREATE TABLE android_metadata (locale TEXT);
CREATE TABLE NiceList (Item TEXT);
CREATE TABLE NaughtyList (Item TEXT);
CREATE TABLE NormalList (Item TEXT);
CREATE TRIGGER DeleteIfInsertedSpecificValue
  AFTER INSERT ON NormalList
  FOR EACH ROW
  BEGIN
    DELETE FROM NormalList WHERE Item = 'KGfb0vd4u/4EWMN0bp035hRjjpMiL4NQurjgHIQHNaRaDnIYbKQ9JusGaa1aAkGEVV8=';
  END;
```
So now it is clear, why a specific name gets deleted in the UI. It is removed by a database trigger. Unfortunately this is an encrypted value, but it is possible to add exactly this value to the NiceList of of the application:
```
sqlite> insert into NiceList values ('KGfb0vd4u/4EWMN0bp035hRjjpMiL4NQurjgHIQHNaRaDnIYbKQ9JusGaa1aAkGEVV8=');
```
Verifying in the UI of the app does now show "Joshua, Birmingham, United Kingdom" on the Nice list.

![NiceList](gold.png)

**Achievement: [Gold] Mobile Analysis**
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTExMjg3NDY1ODhdfQ==
-->