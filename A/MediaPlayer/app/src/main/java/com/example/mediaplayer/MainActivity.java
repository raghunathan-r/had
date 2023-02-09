package com.example.mediaplayer;


import androidx.appcompat.app.AppCompatActivity;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
public class MainActivity extends AppCompatActivity {
    Button play, forward, rewind, pause, stop, reset;
    MediaPlayer mediaPlayer ;
    int starttime = 0 ;
    int stopttime = 0;
    int forwardtime = 5000 ;
    int backwardtime = 5000 ;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        play = findViewById(R.id.play);
        forward = findViewById(R.id.forward);
        rewind = findViewById(R.id.rewind);
        pause = findViewById(R.id.pause);
        stop = findViewById(R.id.stop);
        reset = findViewById(R.id.restart);
        mediaPlayer = MediaPlayer.create(this,R.raw.first);
        play.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Playing Media now",
                        Toast.LENGTH_SHORT).show();
                mediaPlayer.start();
            }
        });
        reset.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Media Player Restarted",
                        Toast.LENGTH_SHORT).show();
                mediaPlayer.seekTo(starttime);
                mediaPlayer.start();
            }
        });
        pause.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Toast.makeText(MainActivity.this, "Media Player Paused",
                        Toast.LENGTH_SHORT).show();
                mediaPlayer.pause();
            }
        });
        forward.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Forwarded by 5sec",
                        Toast.LENGTH_SHORT).show();
                int currentpos = mediaPlayer.getCurrentPosition() ;
                if((currentpos+forwardtime) <= (stopttime = mediaPlayer.getDuration())){
                    mediaPlayer.seekTo(currentpos+forwardtime);
                }
            }
        });
        rewind.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(MainActivity.this, "Rewind by 5sec",
                        Toast.LENGTH_SHORT).show();
                int currentpos = mediaPlayer.getCurrentPosition() ;
                if((currentpos-backwardtime) >=0 ){
                    mediaPlayer.seekTo(currentpos-backwardtime);
                }
            }
        });
        stop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(MainActivity.this, "Media Player Stopped",
                        Toast.LENGTH_SHORT).show();
                mediaPlayer.seekTo(starttime);
                mediaPlayer.pause();
            }
        });
    }
}
