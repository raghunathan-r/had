package com.example.androidactivitylifecycle;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Toast.makeText(this, "Activity Created", Toast.LENGTH_SHORT).show();

        WebView webView = findViewById(R.id.webview);
        webView.loadUrl("https://www.tutorialspoint.com");

        ImageView imageView = findViewById(R.id.imageView);
        Button imageButton = findViewById(R.id.button);
        int flag[] = {1};

        imageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(flag[0] == 1){
                    imageView.setImageResource(R.drawable.second);
                    flag[0] = 2;
                } else if(flag[0] == 2){
                    imageView.setImageResource(R.drawable.first);
                    flag[0] = 1;
                }

            }
        });

        TextView textView = findViewById(R.id.editTextTextPersonName);
        Button nameButton = findViewById(R.id.button2);

        nameButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String name = textView.getText().toString();
                System.out.println(name);
            }
        });


    }

    //        ANDROID ACTIVITY LIFE CYCLE
    @Override
    protected void onPause() {
        super.onPause();
        Toast.makeText(this, "Activity Paused", Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onResume() {
        super.onResume();
        Toast.makeText(this, "Activity Resumed", Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onStop() {
        super.onStop();
        Toast.makeText(this, "Activity Stopped", Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Toast.makeText(this, "Activity Destroyed", Toast.LENGTH_SHORT).show();
        System.out.println("Activity Destroyed");
    }




}