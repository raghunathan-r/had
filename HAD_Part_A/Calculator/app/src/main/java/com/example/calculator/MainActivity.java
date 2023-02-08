package com.example.calculator;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    EditText result;
    String operatorPressed = " ";
    Button one, two, three, four, five, six, seven, eight, nine;
    Button plus, minus, multiply, division, mod, equal, clear, dot;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        result = findViewById(R.id.res);
        one = findViewById(R.id.one);
        two = findViewById(R.id.two);
        three = findViewById(R.id.three);
        four = findViewById(R.id.four);
        five = findViewById(R.id.five);
        six = findViewById(R.id.six);
        seven = findViewById(R.id.seven);
        eight = findViewById(R.id.eight);
        nine = findViewById(R.id.nine);
        plus = findViewById(R.id.plus);
        minus = findViewById(R.id.minus);
        multiply = findViewById(R.id.multiply);
        division = findViewById(R.id.division);
        mod = findViewById(R.id.mod);
        equal = findViewById(R.id.equal);
        clear = findViewById(R.id.clear);
        dot = findViewById(R.id.dot);

        one.setOnClickListener(this);
        two.setOnClickListener(this);
        three.setOnClickListener(this);
        four.setOnClickListener(this);
        five.setOnClickListener(this);
        six.setOnClickListener(this);
        seven.setOnClickListener(this);
        eight.setOnClickListener(this);
        nine.setOnClickListener(this);
        dot.setOnClickListener(this);

        plus.setOnClickListener(this);
        minus.setOnClickListener(this);
        multiply.setOnClickListener(this);
        division.setOnClickListener(this);
        mod.setOnClickListener(this);
        equal.setOnClickListener(this);
        clear.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        double finalResult = 0.0;
        switch (view.getId()) {
            case R.id.one:
                result.append("1");
                break;
            case R.id.two:
                result.append("2");
                break;
            case R.id.three:
                result.append("3");
                break;
            case R.id.four:
                result.append("4");
                break;
            case R.id.five:
                result.append("5");
                break;
            case R.id.six:
                result.append("6");
                break;
            case R.id.seven:
                result.append("7");
                break;
            case R.id.eight:
                result.append("8");
                break;
            case R.id.nine:
                result.append("9");
                break;
            case R.id.zero:
                result.append("0");
                break;
            case R.id.dot:
                result.append(".");
                break;

            case R.id.plus:
                result.append("+");
                operatorPressed = "+";
                break;
            case R.id.minus:
                result.append("-");
                operatorPressed = "-";
                break;
            case R.id.multiply:
                result.append("*");
                operatorPressed = "*";
                break;
            case R.id.division:
                v: result.append("/");
                operatorPressed = "/";
                break;
            case R.id.mod:
                v: result.append("%");
                operatorPressed = "%";
                break;
            case R.id.clear:
                result.getText().clear();
                break;
            case R.id.equal:
                als: finalResult =
                        evaluateExpression(result.getText().toString(), operatorPressed);
                result.setText(String.valueOf(finalResult));
                break;
            default:
                return;
        }
    }
    private double evaluateExpression(String res, String operatorPressed) {
        String[] tokens = res.split("\\+|-|\\*|\\/|%"); // split for +, -, *,/ operator

        double firstOperand = Double.parseDouble(tokens[0]); //convert string to double
        double secondOperand = Double.parseDouble(tokens[1]);
        switch (operatorPressed) {
            case "+":
                return firstOperand + secondOperand;
            case "-":
                return firstOperand - secondOperand;
            case "*":
                return firstOperand * secondOperand;
            case "/":
                return firstOperand / secondOperand;
            case "%":
                return firstOperand % secondOperand;
            default:
                return 0;
        }
    }
}