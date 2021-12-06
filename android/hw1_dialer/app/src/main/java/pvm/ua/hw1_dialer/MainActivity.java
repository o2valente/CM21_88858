package pvm.ua.hw1_dialer;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlertDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    AlertDialog.Builder dialogBuilder;
    AlertDialog dialog;

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
    ImageButton btnDial;
    Button btnDelete;

    Button btnMem1;
    Button btnMem2;
    Button btnMem3;

    String mem1;
    String mem2;
    String mem3;

    EditText mem_name;
    Button popup_saveBtn;
    Button getPopup_cancelBtn;

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
        btnMem1 = findViewById(R.id.memory1);
        btnMem2 = findViewById(R.id.memory2);
        btnMem3 = findViewById(R.id.memory3);

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
            if(numberEt.getText().length() < 1){
                Toast.makeText(v.getContext(), "Invalid Number", Toast.LENGTH_SHORT).show();
            }else{
                Intent intent = new Intent(Intent.ACTION_DIAL);
                //in order to properly parse hashtag it has to be replaced with %23
                String hash = numberEt.getText().toString();
                if(hash.contains("#")){
                    hash = hash.replace("#", "%23");
                }
                intent.setData(Uri.parse("tel:" + hash));
                startActivity(intent);
            }
        });

        btnMem1.setOnLongClickListener(v -> {
            mem1 = numberEt.getText().toString();
            createDialog(btnMem1);
            numberEt.setText("");
            return false;
        });



        btnMem1.setOnClickListener(v -> numberEt.setText(mem1));

        btnMem2.setOnLongClickListener(v -> {
            mem2 = numberEt.getText().toString();
            createDialog(btnMem2);
            numberEt.setText("");
            return false;
        });

        btnMem2.setOnClickListener(v -> numberEt.setText(mem2));

        btnMem3.setOnLongClickListener(v -> {
            mem3 = numberEt.getText().toString();
            createDialog(btnMem3);
            numberEt.setText("");
            return false;
        });

        btnMem3.setOnClickListener(v -> numberEt.setText(mem3));


        numberEt = findViewById(R.id.numberEt);

    }

    public void onClickButton(Button button, EditText inputNumber, String number){
        String cache = numberEt.getText().toString();
        inputNumber.setText(cache + number);
    }


    public void createDialog(Button btn){
        dialogBuilder = new AlertDialog.Builder(this);
        final View memNameView = getLayoutInflater().inflate(R.layout.popup, null);
        mem_name = memNameView.findViewById(R.id.name);

        popup_saveBtn = memNameView.findViewById(R.id.saveButton);
        getPopup_cancelBtn = memNameView.findViewById(R.id.cancelButton);

        dialogBuilder.setView(memNameView);
        dialog = dialogBuilder.create();
        dialog.show();

        popup_saveBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                btn.setText(mem_name.getText());
                dialog.dismiss();
            }
        });

        getPopup_cancelBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.dismiss();
            }
        });

    }

}