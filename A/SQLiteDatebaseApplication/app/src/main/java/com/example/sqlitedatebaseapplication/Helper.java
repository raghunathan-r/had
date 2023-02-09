package com.example.sqlitedatebaseapplication;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

public class Helper extends SQLiteOpenHelper {
    private static final String dbName = "studentdb"; // Database Name
    private static final String tbName = "student"; // Table Name
    private static final int dbVersion = 1;

    public Helper(@Nullable Context context, @Nullable String name, @Nullable SQLiteDatabase.CursorFactory factory, int version) {
        super(context, dbName, factory, dbVersion);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE " + tbName + "(uname VARCHAR(10),passw VARCHAR(10))" + ";");

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int prev_v, int new_v) {
        db.execSQL("DROP TABLE IF EXISTS " + tbName);
        onCreate(db);
    }

    public long adduser(String name, String pass) {
        SQLiteDatabase sqLiteDatabase = this.getWritableDatabase();
        ContentValues cv = new ContentValues();
        cv.put("uname", name);
        cv.put("passw ", pass);
        long result = sqLiteDatabase.insert(tbName, null, cv);
        sqLiteDatabase.close();
        return result;
    }

    public void delete(String name) {
        SQLiteDatabase sqLiteDatabase = this.getWritableDatabase(); // 7(a)
        sqLiteDatabase.execSQL("DELETE FROM " + tbName + " WHERE uname='" + name + "';");
// 7(b)
// SQL statement : DELETE FROM tbName WHERE uname='name';
        sqLiteDatabase.close(); // 7(c)
    }
    public void update(String name, String pass) {
        SQLiteDatabase sqLiteDatabase = this.getWritableDatabase(); //6(a)
        sqLiteDatabase.execSQL("UPDATE " + tbName + " SET passw='" + pass + "'" + " WHERE uname='" + name + "';");//6(b)
// UPDATE tbName SET passw='pass' WHERE uname='name' ; SQL statement
        sqLiteDatabase.close(); // 6(c)
    }

    public String display(Context ctx) {
        SQLiteDatabase sqLiteDatabase = this.getReadableDatabase(); //8(a)
        Cursor cursor = sqLiteDatabase.rawQuery("SELECT * FROM " + tbName, null); //8(b)
        String finalres = " ";
        while (cursor.moveToNext()) { //8(c)
            finalres += cursor.getString(0) + ":" + cursor.getString(1); // 8(d)
        }
        return finalres;
    }
}
