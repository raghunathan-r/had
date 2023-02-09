package com.example.explicitintent;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class SecondActivity extends AppCompatActivity {
    TextView myName;
    String nameFromFirstActivity = " ";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        myName = findViewById(R.id.mytext);
        nameFromFirstActivity = getIntent().getStringExtra("name");
        myName.setText(nameFromFirstActivity);
    }
}
