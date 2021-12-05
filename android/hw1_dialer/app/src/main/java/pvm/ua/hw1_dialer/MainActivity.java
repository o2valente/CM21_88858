package pvm.ua.hw1_dialer;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    Button btnOne;
    Button btnTwo;
    Button btnThree;
    Button btnFour;
    Button btnFive;
    Button btnSix;
    Button btnSeven;
    Button btnEight;
    Button btnNine;
    Button btnAsterisk;
    Button btnZero;
    Button btnHashtag;

    EditText numberEt;
    Button btnDial;
    Button btnDelete;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        numberEt = findViewById(R.id.numberEt);
        btnDial = findViewById(R.id.dialButton);
        btnOne = findViewById(R.id.buttonOne);
        btnTwo = findViewById(R.id.buttonTwo);
        btnThree = findViewById(R.id.buttonThree);
        btnFour = findViewById(R.id.buttonFour);
        btnFive = findViewById(R.id.buttonFive);
        btnSix = findViewById(R.id.buttonSix);
        btnSeven = findViewById(R.id.buttonSeven);
        btnEight = findViewById(R.id.buttonEight);
        btnNine = findViewById(R.id.buttonNine);
        btnAsterisk = findViewById(R.id.buttonAsterisc);
        btnZero = findViewById(R.id.buttonZero);
        btnHashtag = findViewById(R.id.buttonHastag);
        btnDelete = findViewById(R.id.buttonDelete);

        btnOne.setOnClickListener(v -> onClickButton(btnOne, numberEt, "1"));

        btnTwo.setOnClickListener(v -> onClickButton(btnTwo, numberEt, "2"));

        btnThree.setOnClickListener(v -> onClickButton(btnThree, numberEt, "3"));

        btnFour.setOnClickListener(v -> onClickButton(btnFour, numberEt, "4"));

        btnFive.setOnClickListener(v -> onClickButton(btnFive, numberEt, "5"));

        btnSix.setOnClickListener(v -> onClickButton(btnSix, numberEt, "6"));

        btnSeven.setOnClickListener(v -> onClickButton(btnSeven, numberEt, "7"));

        btnEight.setOnClickListener(v -> onClickButton(btnEight, numberEt, "8"));

        btnNine.setOnClickListener(v -> onClickButton(btnNine, numberEt, "9"));

        btnAsterisk.setOnClickListener(v -> onClickButton(btnAsterisk, numberEt, "*"));

        btnZero.setOnClickListener(v -> onClickButton(btnZero, numberEt, "0"));

        btnHashtag.setOnClickListener(v -> onClickButton(btnHashtag, numberEt, "#"));

        btnDelete.setOnClickListener(v -> numberEt.setText(""));

        btnDial.setOnClickListener(v -> {
            if(numberEt.getText().length() < 9){
                Toast.makeText(v.getContext(), "Invalid Number", Toast.LENGTH_SHORT).show();
            }else{
                Intent intent = new Intent(Intent.ACTION_DIAL);

                //in order to properly parse hashtag it has to be replaced with %23
                String hash = numberEt.getText().toString();
                if(hash.contains("#")){
                    hash.replace("#", "%23");
                }
                intent.setData(Uri.parse("tel: " + hash));
                startActivity(intent);
            }
        });

        numberEt = findViewById(R.id.numberEt);

    }

    public void onClickButton(Button button, EditText inputNumber, String number){
        String cache = numberEt.getText().toString();
        inputNumber.setText(cache + number);
    }


}