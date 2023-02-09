package com.example.sqlitedatebaseapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    Button register,update,delete, display, login;
    EditText uname, upass;
    TextView res;

    private static final String dbName="studentdb"; // Database Name
    private static final String tbName="student" ; // Table Name
    private static final int dbVersion = 1 ;
    Helper myDbHelper ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        setContentView(R.layout.activity_main);
        register = findViewById(R.id.register);
        update = findViewById(R.id.update);
        delete = findViewById(R.id.delete) ;
        display = findViewById(R.id.display) ;
        login = findViewById(R.id.login) ;
        res = findViewById(R.id.res) ;
        uname = findViewById(R.id.uname) ;
        upass = findViewById(R.id.upass);

        register.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                myDbHelper = new Helper(MainActivity.this,dbName, null, dbVersion);
                long val = myDbHelper.adduser(uname.getText().toString(), upass.getText().toString());
                if(val == -1){
                    Toast.makeText(MainActivity.this, "Error", Toast.LENGTH_SHORT).show();
                }else{
                    Toast.makeText(MainActivity.this, "inserted", Toast.LENGTH_SHORT).show();
                }
            }

        });

        update.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                myDbHelper = new Helper(MainActivity.this,dbName, null, dbVersion);
                myDbHelper.update(uname.getText().toString(),upass.getText().toString());
            }

        });
        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                myDbHelper = new Helper(MainActivity.this,dbName, null, dbVersion);
                myDbHelper.delete(uname.getText().toString());
            }
        });
        display.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                myDbHelper = new Helper(MainActivity.this,dbName, null, dbVersion);
                String value = myDbHelper.display(MainActivity.this);
                res.setText(value + " ");
            }
        });
    }
}